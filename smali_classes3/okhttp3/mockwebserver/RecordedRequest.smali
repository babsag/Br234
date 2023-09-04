.class public final Lokhttp3/mockwebserver/RecordedRequest;
.super Ljava/lang/Object;
.source "RecordedRequest.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lokhttp3/Headers;

.field private final e:Lokhttp3/Handshake;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:J

.field private final h:Lokio/Buffer;

.field private final i:I

.field private final j:Lokhttp3/HttpUrl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/List;JLokio/Buffer;ILjava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/Headers;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;J",
            "Lokio/Buffer;",
            "I",
            "Ljava/net/Socket;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/mockwebserver/RecordedRequest;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lokhttp3/mockwebserver/RecordedRequest;->d:Lokhttp3/Headers;

    .line 4
    iput-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->f:Ljava/util/List;

    .line 5
    iput-wide p4, p0, Lokhttp3/mockwebserver/RecordedRequest;->g:J

    .line 6
    iput-object p6, p0, Lokhttp3/mockwebserver/RecordedRequest;->h:Lokio/Buffer;

    .line 7
    iput p7, p0, Lokhttp3/mockwebserver/RecordedRequest;->i:I

    .line 8
    instance-of p2, p8, Ljavax/net/ssl/SSLSocket;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 9
    :try_start_0
    move-object p4, p8

    check-cast p4, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p4}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p4

    invoke-static {p4}, Lokhttp3/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;

    move-result-object p4

    iput-object p4, p0, Lokhttp3/mockwebserver/RecordedRequest;->e:Lokhttp3/Handshake;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 11
    :cond_0
    iput-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->e:Lokhttp3/Handshake;

    :goto_0
    if-eqz p1, :cond_2

    const/16 p3, 0x20

    .line 12
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p4

    add-int/lit8 p5, p4, 0x1

    .line 13
    invoke-virtual {p1, p3, p5}, Ljava/lang/String;->indexOf(II)I

    move-result p3

    const/4 p6, 0x0

    .line 14
    invoke-virtual {p1, p6, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lokhttp3/mockwebserver/RecordedRequest;->b:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, p5, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/mockwebserver/RecordedRequest;->c:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p2, "https"

    goto :goto_1

    :cond_1
    const-string p2, "http"

    .line 16
    :goto_1
    invoke-virtual {p8}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p3

    .line 17
    invoke-virtual {p8}, Ljava/net/Socket;->getLocalPort()I

    move-result p4

    const/4 p5, 0x4

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p2, p5, p6

    const/4 p2, 0x1

    aput-object p3, p5, p2

    const/4 p2, 0x2

    .line 18
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p5, p2

    const/4 p2, 0x3

    aput-object p1, p5, p2

    const-string p1, "%s://%s:%s%s"

    invoke-static {p1, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/mockwebserver/RecordedRequest;->j:Lokhttp3/HttpUrl;

    goto :goto_2

    .line 19
    :cond_2
    iput-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->j:Lokhttp3/HttpUrl;

    .line 20
    iput-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->b:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->c:Ljava/lang/String;

    :goto_2
    return-void
.end method


# virtual methods
.method public getBody()Lokio/Buffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->h:Lokio/Buffer;

    return-object v0
.end method

.method public getBodySize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->g:J

    return-wide v0
.end method

.method public getChunkSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->f:Ljava/util/List;

    return-object v0
.end method

.method public getHandshake()Lokhttp3/Handshake;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->e:Lokhttp3/Handshake;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->d:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getHeaders()Lokhttp3/Headers;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->d:Lokhttp3/Headers;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestLine()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUrl()Lokhttp3/HttpUrl;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->j:Lokhttp3/HttpUrl;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->i:I

    return v0
.end method

.method public getTlsVersion()Lokhttp3/TlsVersion;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->e:Lokhttp3/Handshake;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/Handshake;->tlsVersion()Lokhttp3/TlsVersion;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUtf8Body()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/mockwebserver/RecordedRequest;->getBody()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->a:Ljava/lang/String;

    return-object v0
.end method
