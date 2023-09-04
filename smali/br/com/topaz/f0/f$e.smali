.class Lbr/com/topaz/f0/f$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/f0/f;->a(Ljava/lang/String;Lbr/com/topaz/f0/g$a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbr/com/topaz/f0/g$a;

.field final synthetic d:Lbr/com/topaz/f0/f;


# direct methods
.method constructor <init>(Lbr/com/topaz/f0/f;Ljava/lang/String;Ljava/lang/String;Lbr/com/topaz/f0/g$a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/f0/f$e;->d:Lbr/com/topaz/f0/f;

    iput-object p2, p0, Lbr/com/topaz/f0/f$e;->a:Ljava/lang/String;

    iput-object p3, p0, Lbr/com/topaz/f0/f$e;->b:Ljava/lang/String;

    iput-object p4, p0, Lbr/com/topaz/f0/f$e;->c:Lbr/com/topaz/f0/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lbr/com/topaz/f0/f$e;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v0, v1

    :try_start_1
    const-string v1, "If-None-Match"

    iget-object v2, p0, Lbr/com/topaz/f0/f$e;->d:Lbr/com/topaz/f0/f;

    invoke-static {v2}, Lbr/com/topaz/f0/f;->a(Lbr/com/topaz/f0/f;)Lbr/com/topaz/l/e0;

    move-result-object v2

    iget-object v3, p0, Lbr/com/topaz/f0/f$e;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Lbr/com/topaz/l/e0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/16 v1, 0x2710

    :try_start_2
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    iget-object v1, p0, Lbr/com/topaz/f0/f$e;->d:Lbr/com/topaz/f0/f;

    invoke-static {v1}, Lbr/com/topaz/f0/f;->b(Lbr/com/topaz/f0/f;)Lbr/com/topaz/u0/n;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lbr/com/topaz/u0/n;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbr/com/topaz/f0/f$e;->d:Lbr/com/topaz/f0/f;

    invoke-static {v1}, Lbr/com/topaz/f0/f;->a(Lbr/com/topaz/f0/f;)Lbr/com/topaz/l/e0;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/f0/f$e;->b:Ljava/lang/String;

    const-string v3, "ETag"

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lbr/com/topaz/l/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/f0/f$e;->c:Lbr/com/topaz/f0/g$a;

    iget-object v2, p0, Lbr/com/topaz/f0/f$e;->d:Lbr/com/topaz/f0/f;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v2, v3}, Lbr/com/topaz/f0/f;->a(Lbr/com/topaz/f0/f;Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Lbr/com/topaz/f0/g$a;->b([B)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lbr/com/topaz/f0/f$e;->d:Lbr/com/topaz/f0/f;

    invoke-static {v1}, Lbr/com/topaz/f0/f;->b(Lbr/com/topaz/f0/f;)Lbr/com/topaz/u0/n;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lbr/com/topaz/u0/n;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbr/com/topaz/f0/f$e;->c:Lbr/com/topaz/f0/g$a;

    iget-object v2, p0, Lbr/com/topaz/f0/f$e;->d:Lbr/com/topaz/f0/f;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v2, v3}, Lbr/com/topaz/f0/f;->a(Lbr/com/topaz/f0/f;Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Lbr/com/topaz/f0/g$a;->a([B)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lbr/com/topaz/f0/f$e;->c:Lbr/com/topaz/f0/g$a;

    invoke-interface {v1}, Lbr/com/topaz/f0/g$a;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    :try_start_3
    iget-object v1, p0, Lbr/com/topaz/f0/f$e;->c:Lbr/com/topaz/f0/g$a;

    invoke-interface {v1}, Lbr/com/topaz/f0/g$a;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-void

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v1
.end method
