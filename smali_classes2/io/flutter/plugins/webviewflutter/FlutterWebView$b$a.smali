.class Lio/flutter/plugins/webviewflutter/FlutterWebView$b$a;
.super Landroid/webkit/WebViewClient;
.source "FlutterWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/webviewflutter/FlutterWebView$b;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugins/webviewflutter/FlutterWebView$b;


# direct methods
.method constructor <init>(Lio/flutter/plugins/webviewflutter/FlutterWebView$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/FlutterWebView$b$a;->a:Lio/flutter/plugins/webviewflutter/FlutterWebView$b;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebResourceRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "request"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/FlutterWebView$b$a;->a:Lio/flutter/plugins/webviewflutter/FlutterWebView$b;

    iget-object v0, v0, Lio/flutter/plugins/webviewflutter/FlutterWebView$b;->a:Lio/flutter/plugins/webviewflutter/FlutterWebView;

    invoke-static {v0}, Lio/flutter/plugins/webviewflutter/FlutterWebView;->b(Lio/flutter/plugins/webviewflutter/FlutterWebView;)Lio/flutter/plugins/webviewflutter/c;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/FlutterWebView$b$a;->a:Lio/flutter/plugins/webviewflutter/FlutterWebView$b;

    iget-object v1, v1, Lio/flutter/plugins/webviewflutter/FlutterWebView$b;->a:Lio/flutter/plugins/webviewflutter/FlutterWebView;

    .line 3
    invoke-static {v1}, Lio/flutter/plugins/webviewflutter/FlutterWebView;->a(Lio/flutter/plugins/webviewflutter/FlutterWebView;)Lio/flutter/plugins/webviewflutter/d;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1, p2}, Lio/flutter/plugins/webviewflutter/c;->l(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lio/flutter/plugins/webviewflutter/FlutterWebView$b$a;->a:Lio/flutter/plugins/webviewflutter/FlutterWebView$b;

    iget-object p2, p2, Lio/flutter/plugins/webviewflutter/FlutterWebView$b;->a:Lio/flutter/plugins/webviewflutter/FlutterWebView;

    invoke-static {p2}, Lio/flutter/plugins/webviewflutter/FlutterWebView;->a(Lio/flutter/plugins/webviewflutter/FlutterWebView;)Lio/flutter/plugins/webviewflutter/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "url"
        }
    .end annotation

    .line 6
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/FlutterWebView$b$a;->a:Lio/flutter/plugins/webviewflutter/FlutterWebView$b;

    iget-object p1, p1, Lio/flutter/plugins/webviewflutter/FlutterWebView$b;->a:Lio/flutter/plugins/webviewflutter/FlutterWebView;

    invoke-static {p1}, Lio/flutter/plugins/webviewflutter/FlutterWebView;->b(Lio/flutter/plugins/webviewflutter/FlutterWebView;)Lio/flutter/plugins/webviewflutter/c;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/FlutterWebView$b$a;->a:Lio/flutter/plugins/webviewflutter/FlutterWebView$b;

    iget-object v0, v0, Lio/flutter/plugins/webviewflutter/FlutterWebView$b;->a:Lio/flutter/plugins/webviewflutter/FlutterWebView;

    .line 7
    invoke-static {v0}, Lio/flutter/plugins/webviewflutter/FlutterWebView;->a(Lio/flutter/plugins/webviewflutter/FlutterWebView;)Lio/flutter/plugins/webviewflutter/d;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0, p2}, Lio/flutter/plugins/webviewflutter/c;->m(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/FlutterWebView$b$a;->a:Lio/flutter/plugins/webviewflutter/FlutterWebView$b;

    iget-object p1, p1, Lio/flutter/plugins/webviewflutter/FlutterWebView$b;->a:Lio/flutter/plugins/webviewflutter/FlutterWebView;

    invoke-static {p1}, Lio/flutter/plugins/webviewflutter/FlutterWebView;->a(Lio/flutter/plugins/webviewflutter/FlutterWebView;)Lio/flutter/plugins/webviewflutter/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
