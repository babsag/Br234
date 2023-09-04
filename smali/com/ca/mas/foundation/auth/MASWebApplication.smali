.class public Lcom/ca/mas/foundation/auth/MASWebApplication;
.super Ljava/lang/Object;
.source "MASWebApplication.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ca/mas/foundation/auth/MASWebApplication;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/ca/mas/foundation/auth/MASWebApplication;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 5
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ca/mas/foundation/MASConfiguration;->getCurrentConfiguration()Lcom/ca/mas/foundation/MASConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/foundation/MASConfiguration;->getGatewayHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This auth url is valid only for the host that has issued the access_token"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method static synthetic a(Lcom/ca/mas/foundation/auth/MASWebApplication;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/auth/MASWebApplication;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected getRequestTimeout()I
    .locals 1

    const/16 v0, 0x1388

    return v0
.end method

.method protected getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/auth/MASWebApplication$a;

    invoke-direct {v0, p0}, Lcom/ca/mas/foundation/auth/MASWebApplication$a;-><init>(Lcom/ca/mas/foundation/auth/MASWebApplication;)V

    return-object v0
.end method
