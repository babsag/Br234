.class Lcom/ca/mas/foundation/auth/MASWebApplication$a$a;
.super Lcom/ca/mas/foundation/MASCallback;
.source "MASWebApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/auth/MASWebApplication$a;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ca/mas/foundation/MASCallback<",
        "Lcom/ca/mas/foundation/MASResponse<",
        "[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebResourceResponse;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/ca/mas/foundation/auth/MASWebApplication$a;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/auth/MASWebApplication$a;Landroid/webkit/WebResourceResponse;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/auth/MASWebApplication$a$a;->c:Lcom/ca/mas/foundation/auth/MASWebApplication$a;

    iput-object p2, p0, Lcom/ca/mas/foundation/auth/MASWebApplication$a$a;->a:Landroid/webkit/WebResourceResponse;

    iput-object p3, p0, Lcom/ca/mas/foundation/auth/MASWebApplication$a$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/ca/mas/foundation/MASCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ca/mas/foundation/MASResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASResponse<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/ca/mas/foundation/auth/MASWebApplication$a$a;->a:Landroid/webkit/WebResourceResponse;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-interface {p1}, Lcom/ca/mas/foundation/MASResponse;->getBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASResponseBody;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebResourceResponse;->setData(Ljava/io/InputStream;)V

    .line 2
    iget-object p1, p0, Lcom/ca/mas/foundation/auth/MASWebApplication$a$a;->a:Landroid/webkit/WebResourceResponse;

    invoke-virtual {p1, v0}, Landroid/webkit/WebResourceResponse;->setEncoding(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/ca/mas/foundation/auth/MASWebApplication$a$a;->a:Landroid/webkit/WebResourceResponse;

    const-string v1, "text/html"

    invoke-virtual {p1, v1}, Landroid/webkit/WebResourceResponse;->setMimeType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    iget-object v1, p0, Lcom/ca/mas/foundation/auth/MASWebApplication$a$a;->a:Landroid/webkit/WebResourceResponse;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebResourceResponse;->setData(Ljava/io/InputStream;)V

    .line 5
    iget-object p1, p0, Lcom/ca/mas/foundation/auth/MASWebApplication$a$a;->a:Landroid/webkit/WebResourceResponse;

    invoke-virtual {p1, v0}, Landroid/webkit/WebResourceResponse;->setEncoding(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/ca/mas/foundation/auth/MASWebApplication$a$a;->a:Landroid/webkit/WebResourceResponse;

    const-string v0, "plain/text"

    invoke-virtual {p1, v0}, Landroid/webkit/WebResourceResponse;->setMimeType(Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/ca/mas/foundation/auth/MASWebApplication$a$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ca/mas/foundation/auth/MASWebApplication$a$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ca/mas/foundation/MASResponse;

    invoke-virtual {p0, p1}, Lcom/ca/mas/foundation/auth/MASWebApplication$a$a;->a(Lcom/ca/mas/foundation/MASResponse;)V

    return-void
.end method
