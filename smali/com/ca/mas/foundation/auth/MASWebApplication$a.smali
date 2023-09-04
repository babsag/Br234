.class Lcom/ca/mas/foundation/auth/MASWebApplication$a;
.super Landroid/webkit/WebViewClient;
.source "MASWebApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/auth/MASWebApplication;->getWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/foundation/auth/MASWebApplication;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/auth/MASWebApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/auth/MASWebApplication$a;->a:Lcom/ca/mas/foundation/auth/MASWebApplication;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/foundation/auth/MASWebApplication$a;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4

    .line 2
    iget-object p1, p0, Lcom/ca/mas/foundation/auth/MASWebApplication$a;->a:Lcom/ca/mas/foundation/auth/MASWebApplication;

    invoke-static {p1}, Lcom/ca/mas/foundation/auth/MASWebApplication;->a(Lcom/ca/mas/foundation/auth/MASWebApplication;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4
    new-instance v1, Landroid/webkit/WebResourceResponse;

    invoke-direct {v1, v0, v0, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 5
    :try_start_0
    new-instance v0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URL;)V

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    new-instance v0, Lcom/ca/mas/foundation/auth/MASWebApplication$a$a;

    invoke-direct {v0, p0, v1, p1}, Lcom/ca/mas/foundation/auth/MASWebApplication$a$a;-><init>(Lcom/ca/mas/foundation/auth/MASWebApplication$a;Landroid/webkit/WebResourceResponse;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {p2, v0}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J

    .line 7
    :try_start_1
    iget-object p2, p0, Lcom/ca/mas/foundation/auth/MASWebApplication$a;->a:Lcom/ca/mas/foundation/auth/MASWebApplication;

    invoke-virtual {p2}, Lcom/ca/mas/foundation/auth/MASWebApplication;->getRequestTimeout()I

    move-result p2

    int-to-long v2, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    new-instance p1, Ljava/io/ByteArrayInputStream;

    const-string p2, "No response from Server"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, p1}, Landroid/webkit/WebResourceResponse;->setData(Ljava/io/InputStream;)V

    const-string p1, "UTF-8"

    .line 9
    invoke-virtual {v1, p1}, Landroid/webkit/WebResourceResponse;->setEncoding(Ljava/lang/String;)V

    const-string p1, "plain/text"

    .line 10
    invoke-virtual {v1, p1}, Landroid/webkit/WebResourceResponse;->setMimeType(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :catch_1
    move-exception p1

    .line 11
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    return-object v0
.end method
