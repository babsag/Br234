.class public final Lokhttp3/mockwebserver/MockResponse;
.super Ljava/lang/Object;
.source "MockResponse.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lokhttp3/Headers$Builder;

.field private c:Lokio/Buffer;

.field private d:J

.field private e:J

.field private f:Ljava/util/concurrent/TimeUnit;

.field private g:Lokhttp3/mockwebserver/SocketPolicy;

.field private h:I

.field private i:J

.field private j:Ljava/util/concurrent/TimeUnit;

.field private k:J

.field private l:Ljava/util/concurrent/TimeUnit;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/mockwebserver/PushPromise;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lokhttp3/internal/http2/Settings;

.field private o:Lokhttp3/WebSocketListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->b:Lokhttp3/Headers$Builder;

    const-wide v0, 0x7fffffffffffffffL

    .line 3
    iput-wide v0, p0, Lokhttp3/mockwebserver/MockResponse;->d:J

    const-wide/16 v0, 0x1

    .line 4
    iput-wide v0, p0, Lokhttp3/mockwebserver/MockResponse;->e:J

    .line 5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->f:Ljava/util/concurrent/TimeUnit;

    .line 6
    sget-object v0, Lokhttp3/mockwebserver/SocketPolicy;->KEEP_OPEN:Lokhttp3/mockwebserver/SocketPolicy;

    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->g:Lokhttp3/mockwebserver/SocketPolicy;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lokhttp3/mockwebserver/MockResponse;->h:I

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lokhttp3/mockwebserver/MockResponse;->i:J

    .line 9
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v2, p0, Lokhttp3/mockwebserver/MockResponse;->j:Ljava/util/concurrent/TimeUnit;

    .line 10
    iput-wide v0, p0, Lokhttp3/mockwebserver/MockResponse;->k:J

    .line 11
    iput-object v2, p0, Lokhttp3/mockwebserver/MockResponse;->l:Ljava/util/concurrent/TimeUnit;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->m:Ljava/util/List;

    const/16 v0, 0xc8

    .line 13
    invoke-virtual {p0, v0}, Lokhttp3/mockwebserver/MockResponse;->setResponseCode(I)Lokhttp3/mockwebserver/MockResponse;

    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-virtual {p0, v1, v0}, Lokhttp3/mockwebserver/MockResponse;->setHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->b:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    .line 2
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->b:Lokhttp3/Headers$Builder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public addHeaderLenient(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;
    .locals 2

    .line 1
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v1, p0, Lokhttp3/mockwebserver/MockResponse;->b:Lokhttp3/Headers$Builder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public clearHeaders()Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->b:Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockResponse;->clone()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokhttp3/mockwebserver/MockResponse;
    .locals 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    .line 3
    iget-object v1, p0, Lokhttp3/mockwebserver/MockResponse;->b:Lokhttp3/Headers$Builder;

    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/mockwebserver/MockResponse;->b:Lokhttp3/Headers$Builder;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lokhttp3/mockwebserver/MockResponse;->m:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lokhttp3/mockwebserver/MockResponse;->m:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getBody()Lokio/Buffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->c:Lokio/Buffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getBodyDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lokhttp3/mockwebserver/MockResponse;->i:J

    iget-object v2, p0, Lokhttp3/mockwebserver/MockResponse;->j:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaders()Lokhttp3/Headers;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->b:Lokhttp3/Headers$Builder;

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public getHeadersDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lokhttp3/mockwebserver/MockResponse;->k:J

    iget-object v2, p0, Lokhttp3/mockwebserver/MockResponse;->l:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHttp2ErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/mockwebserver/MockResponse;->h:I

    return v0
.end method

.method public getPushPromises()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/mockwebserver/PushPromise;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->m:Ljava/util/List;

    return-object v0
.end method

.method public getSettings()Lokhttp3/internal/http2/Settings;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->n:Lokhttp3/internal/http2/Settings;

    return-object v0
.end method

.method public getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->g:Lokhttp3/mockwebserver/SocketPolicy;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getThrottleBytesPerPeriod()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/mockwebserver/MockResponse;->d:J

    return-wide v0
.end method

.method public getThrottlePeriod(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lokhttp3/mockwebserver/MockResponse;->e:J

    iget-object v2, p0, Lokhttp3/mockwebserver/MockResponse;->f:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWebSocketListener()Lokhttp3/WebSocketListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->o:Lokhttp3/WebSocketListener;

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->b:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public setBody(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    .line 3
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/mockwebserver/MockResponse;->setBody(Lokio/Buffer;)Lokhttp3/mockwebserver/MockResponse;

    move-result-object p1

    return-object p1
.end method

.method public setBody(Lokio/Buffer;)Lokhttp3/mockwebserver/MockResponse;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-virtual {p0, v1, v0}, Lokhttp3/mockwebserver/MockResponse;->setHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;

    .line 2
    invoke-virtual {p1}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/mockwebserver/MockResponse;->c:Lokio/Buffer;

    return-object p0
.end method

.method public setBodyDelay(JLjava/util/concurrent/TimeUnit;)Lokhttp3/mockwebserver/MockResponse;
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/mockwebserver/MockResponse;->i:J

    .line 2
    iput-object p3, p0, Lokhttp3/mockwebserver/MockResponse;->j:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public setChunkedBody(Ljava/lang/String;I)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    .line 12
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lokhttp3/mockwebserver/MockResponse;->setChunkedBody(Lokio/Buffer;I)Lokhttp3/mockwebserver/MockResponse;

    move-result-object p1

    return-object p1
.end method

.method public setChunkedBody(Lokio/Buffer;I)Lokhttp3/mockwebserver/MockResponse;
    .locals 5

    const-string v0, "Content-Length"

    .line 1
    invoke-virtual {p0, v0}, Lokhttp3/mockwebserver/MockResponse;->removeHeader(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;

    .line 2
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->b:Lokhttp3/Headers$Builder;

    const-string v1, "Transfer-encoding: chunked"

    invoke-virtual {v0, v1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 3
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 4
    :goto_0
    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    int-to-long v3, p2

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 6
    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    const-string v3, "\r\n"

    .line 7
    invoke-virtual {v0, v3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    .line 8
    invoke-virtual {v0, p1, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 9
    invoke-virtual {v0, v3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    goto :goto_0

    :cond_0
    const-string p1, "0\r\n\r\n"

    .line 10
    invoke-virtual {v0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    .line 11
    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->c:Lokio/Buffer;

    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokhttp3/mockwebserver/MockResponse;->removeHeader(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;

    .line 2
    invoke-virtual {p0, p1, p2}, Lokhttp3/mockwebserver/MockResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;

    move-result-object p1

    return-object p1
.end method

.method public setHeaders(Lokhttp3/Headers;)Lokhttp3/mockwebserver/MockResponse;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/mockwebserver/MockResponse;->b:Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public setHeadersDelay(JLjava/util/concurrent/TimeUnit;)Lokhttp3/mockwebserver/MockResponse;
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/mockwebserver/MockResponse;->k:J

    .line 2
    iput-object p3, p0, Lokhttp3/mockwebserver/MockResponse;->l:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public setHttp2ErrorCode(I)Lokhttp3/mockwebserver/MockResponse;
    .locals 0

    .line 1
    iput p1, p0, Lokhttp3/mockwebserver/MockResponse;->h:I

    return-object p0
.end method

.method public setResponseCode(I)Lokhttp3/mockwebserver/MockResponse;
    .locals 3

    const/16 v0, 0xc8

    const/16 v1, 0x64

    if-lt p1, v1, :cond_0

    if-ge p1, v0, :cond_0

    const-string v0, "Informational"

    goto :goto_0

    :cond_0
    const/16 v1, 0x12c

    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    const-string v0, "OK"

    goto :goto_0

    :cond_1
    const/16 v0, 0x190

    if-lt p1, v1, :cond_2

    if-ge p1, v0, :cond_2

    const-string v0, "Redirection"

    goto :goto_0

    :cond_2
    const/16 v1, 0x1f4

    if-lt p1, v0, :cond_3

    if-ge p1, v1, :cond_3

    const-string v0, "Client Error"

    goto :goto_0

    :cond_3
    if-lt p1, v1, :cond_4

    const/16 v0, 0x258

    if-ge p1, v0, :cond_4

    const-string v0, "Server Error"

    goto :goto_0

    :cond_4
    const-string v0, "Mock Response"

    .line 1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP/1.1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/mockwebserver/MockResponse;->setStatus(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;

    move-result-object p1

    return-object p1
.end method

.method public setSocketPolicy(Lokhttp3/mockwebserver/SocketPolicy;)Lokhttp3/mockwebserver/MockResponse;
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/mockwebserver/MockResponse;->g:Lokhttp3/mockwebserver/SocketPolicy;

    return-object p0
.end method

.method public setStatus(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/mockwebserver/MockResponse;->a:Ljava/lang/String;

    return-object p0
.end method

.method public throttleBody(JJLjava/util/concurrent/TimeUnit;)Lokhttp3/mockwebserver/MockResponse;
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/mockwebserver/MockResponse;->d:J

    .line 2
    iput-wide p3, p0, Lokhttp3/mockwebserver/MockResponse;->e:J

    .line 3
    iput-object p5, p0, Lokhttp3/mockwebserver/MockResponse;->f:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public withPush(Lokhttp3/mockwebserver/PushPromise;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withSettings(Lokhttp3/internal/http2/Settings;)Lokhttp3/mockwebserver/MockResponse;
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/mockwebserver/MockResponse;->n:Lokhttp3/internal/http2/Settings;

    return-object p0
.end method

.method public withWebSocketUpgrade(Lokhttp3/WebSocketListener;)Lokhttp3/mockwebserver/MockResponse;
    .locals 2

    const-string v0, "HTTP/1.1 101 Switching Protocols"

    .line 1
    invoke-virtual {p0, v0}, Lokhttp3/mockwebserver/MockResponse;->setStatus(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;

    const-string v0, "Connection"

    const-string v1, "Upgrade"

    .line 2
    invoke-virtual {p0, v0, v1}, Lokhttp3/mockwebserver/MockResponse;->setHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;

    const-string v0, "websocket"

    .line 3
    invoke-virtual {p0, v1, v0}, Lokhttp3/mockwebserver/MockResponse;->setHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->c:Lokio/Buffer;

    .line 5
    iput-object p1, p0, Lokhttp3/mockwebserver/MockResponse;->o:Lokhttp3/WebSocketListener;

    return-object p0
.end method
