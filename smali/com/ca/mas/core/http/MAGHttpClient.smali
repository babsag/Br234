.class public Lcom/ca/mas/core/http/MAGHttpClient;
.super Ljava/lang/Object;
.source "MAGHttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/foundation/MASResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ca/mas/foundation/MASRequest;",
            ")",
            "Lcom/ca/mas/foundation/MASResponse<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/ca/mas/core/http/SSLSocketFactoryProvider;->getInstance()Lcom/ca/mas/core/http/SSLSocketFactoryProvider;

    move-result-object v0

    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ca/mas/core/http/SSLSocketFactoryProvider;->get(Ljava/net/URL;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ca/mas/core/http/MAGHttpClient;->execute(Lcom/ca/mas/foundation/MASRequest;Ljavax/net/ssl/SSLSocketFactory;)Lcom/ca/mas/foundation/MASResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASSecurityConfiguration;)Lcom/ca/mas/foundation/MASResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ca/mas/foundation/MASRequest;",
            "Lcom/ca/mas/foundation/MASSecurityConfiguration;",
            ")",
            "Lcom/ca/mas/foundation/MASResponse<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ca/mas/core/http/SSLSocketFactoryProvider;->getInstance()Lcom/ca/mas/core/http/SSLSocketFactoryProvider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ca/mas/core/http/SSLSocketFactoryProvider;->createSSLSocketFactory(Lcom/ca/mas/foundation/MASSecurityConfiguration;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/http/MAGHttpClient;->execute(Lcom/ca/mas/foundation/MASRequest;Ljavax/net/ssl/SSLSocketFactory;)Lcom/ca/mas/foundation/MASResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcom/ca/mas/foundation/MASRequest;Ljavax/net/ssl/SSLSocketFactory;)Lcom/ca/mas/foundation/MASResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ca/mas/foundation/MASRequest;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ")",
            "Lcom/ca/mas/foundation/MASResponse<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Content-Type"

    const-string v1, "PATCH"

    .line 3
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 4
    sget-boolean v3, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    const/4 v4, 0x0

    const-string v5, "MAS"

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    new-array v3, v6, [Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getURL()Ljava/net/URL;

    move-result-object v7

    aput-object v7, v3, v4

    const-string v7, "API Request Url: %s"

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v6, [Ljava/lang/Object;

    .line 6
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getMethod()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const-string v7, "API Request Method: %s"

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->isPublic()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v3

    .line 10
    invoke-interface {v3}, Lcom/ca/mas/core/store/TokenProvider;->getMagIdentifier()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v7, "mag-identifier"

    .line 11
    invoke-virtual {v2, v7, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    invoke-virtual {p0, v2}, Lcom/ca/mas/core/http/MAGHttpClient;->onConnectionObtained(Ljava/net/HttpURLConnection;)V

    .line 13
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getConnectionListener()Lcom/ca/mas/foundation/MASConnectionListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 14
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getConnectionListener()Lcom/ca/mas/foundation/MASConnectionListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/ca/mas/foundation/MASConnectionListener;->onObtained(Ljava/net/HttpURLConnection;)V

    .line 15
    :cond_2
    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_3

    .line 16
    move-object v3, v2

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3, p2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 17
    :cond_3
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectionListener()Lcom/ca/mas/foundation/MASConnectionListener;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 18
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectionListener()Lcom/ca/mas/foundation/MASConnectionListener;

    move-result-object p2

    invoke-interface {p2, v2}, Lcom/ca/mas/foundation/MASConnectionListener;->onObtained(Ljava/net/HttpURLConnection;)V

    .line 19
    :cond_4
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getMethod()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-gt p2, v3, :cond_5

    const-string p2, "X-HTTP-Method-Override"

    .line 20
    invoke-virtual {v2, p2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "POST"

    .line 21
    invoke-virtual {v2, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_5
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getMethod()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 23
    :goto_0
    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string p2, "Connection"

    const-string v1, "Keep-Alive"

    .line 24
    invoke-virtual {v2, p2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 26
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 27
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 28
    invoke-virtual {v2, v1, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_7
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getBody()Lcom/ca/mas/foundation/MASRequestBody;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 30
    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 31
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-le v1, v3, :cond_9

    .line 32
    invoke-virtual {p2}, Lcom/ca/mas/foundation/MASRequestBody;->getContentLength()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_8

    .line 33
    invoke-virtual {p2}, Lcom/ca/mas/foundation/MASRequestBody;->getContentLength()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    goto :goto_2

    .line 34
    :cond_8
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 35
    :cond_9
    :goto_2
    invoke-virtual {p2}, Lcom/ca/mas/foundation/MASRequestBody;->getContentType()Lcom/ca/mas/core/http/ContentType;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 36
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_a

    .line 37
    invoke-virtual {p2}, Lcom/ca/mas/foundation/MASRequestBody;->getContentType()Lcom/ca/mas/core/http/ContentType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/http/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_a
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getConnectionListener()Lcom/ca/mas/foundation/MASConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 39
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getConnectionListener()Lcom/ca/mas/foundation/MASConnectionListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/ca/mas/foundation/MASConnectionListener;->onConnected(Ljava/net/HttpURLConnection;)V

    .line 40
    :cond_b
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectionListener()Lcom/ca/mas/foundation/MASConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 41
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectionListener()Lcom/ca/mas/foundation/MASConnectionListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/ca/mas/foundation/MASConnectionListener;->onConnected(Ljava/net/HttpURLConnection;)V

    .line 42
    :cond_c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ca/mas/foundation/MASRequestBody;->write(Ljava/io/OutputStream;)V

    goto :goto_3

    .line 43
    :cond_d
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getConnectionListener()Lcom/ca/mas/foundation/MASConnectionListener;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 44
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getConnectionListener()Lcom/ca/mas/foundation/MASConnectionListener;

    move-result-object p2

    invoke-interface {p2, v2}, Lcom/ca/mas/foundation/MASConnectionListener;->onConnected(Ljava/net/HttpURLConnection;)V

    .line 45
    :cond_e
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectionListener()Lcom/ca/mas/foundation/MASConnectionListener;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 46
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectionListener()Lcom/ca/mas/foundation/MASConnectionListener;

    move-result-object p2

    invoke-interface {p2, v2}, Lcom/ca/mas/foundation/MASConnectionListener;->onConnected(Ljava/net/HttpURLConnection;)V

    .line 47
    :cond_f
    :goto_3
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getResponseBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 49
    :catch_0
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    .line 50
    :goto_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    .line 51
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_10

    const-string v1, "Response code: %d"

    new-array v3, v6, [Ljava/lang/Object;

    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Response message: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    .line 53
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_10
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASRequest;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v1, "request-type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 55
    invoke-virtual {v8, v2}, Lcom/ca/mas/foundation/MASResponseBody;->read(Ljava/net/HttpURLConnection;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v6, p2

    move-object v7, v0

    goto :goto_5

    :catch_1
    move-exception p1

    .line 56
    :try_start_3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p2, v0, :cond_13

    .line 57
    invoke-virtual {p1}, Ljavax/net/ssl/SSLHandshakeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Ljavax/net/ssl/SSLHandshakeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljavax/net/ssl/SSLProtocolException;

    if-eqz p2, :cond_12

    .line 58
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p1, :cond_11

    const-string p1, "SSLHandshakeException occurs, setting it to response 204"

    .line 59
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/16 p1, 0xcc

    const/4 p2, 0x0

    move-object v7, p2

    const/16 v6, 0xcc

    .line 60
    :goto_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    .line 61
    new-instance p1, Lcom/ca/mas/core/http/MAGHttpClient$a;

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/ca/mas/core/http/MAGHttpClient$a;-><init>(Lcom/ca/mas/core/http/MAGHttpClient;Ljava/util/Map;ILjava/lang/String;Lcom/ca/mas/foundation/MASResponseBody;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    .line 63
    :cond_12
    :try_start_4
    throw p1

    .line 64
    :cond_13
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 65
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1
.end method

.method protected onConnectionObtained(Ljava/net/HttpURLConnection;)V
    .locals 0

    return-void
.end method
