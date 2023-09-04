.class Lcom/flutter_webview_plugin/b$d;
.super Landroid/webkit/WebChromeClient;
.source "WebviewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flutter_webview_plugin/b;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/flutter_webview_plugin/b;


# direct methods
.method constructor <init>(Lcom/flutter_webview_plugin/b;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/flutter_webview_plugin/b$d;->b:Lcom/flutter_webview_plugin/b;

    iput-object p2, p0, Lcom/flutter_webview_plugin/b$d;->a:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "origin",
            "callback"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "progress"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    int-to-double v0, p2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v0, "progress"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p2, Lcom/flutter_webview_plugin/FlutterWebviewPlugin;->a:Lio/flutter/plugin/common/MethodChannel;

    const-string v0, "onProgressChanged"

    invoke-virtual {p2, v0, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "webView",
            "filePathCallback",
            "fileChooserParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/flutter_webview_plugin/b$d;->b:Lcom/flutter_webview_plugin/b;

    invoke-static {p1}, Lcom/flutter_webview_plugin/b;->j(Lcom/flutter_webview_plugin/b;)Landroid/webkit/ValueCallback;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/flutter_webview_plugin/b$d;->b:Lcom/flutter_webview_plugin/b;

    invoke-static {p1}, Lcom/flutter_webview_plugin/b;->j(Lcom/flutter_webview_plugin/b;)Landroid/webkit/ValueCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/flutter_webview_plugin/b$d;->b:Lcom/flutter_webview_plugin/b;

    invoke-static {p1, p2}, Lcom/flutter_webview_plugin/b;->k(Lcom/flutter_webview_plugin/b;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 4
    iget-object p1, p0, Lcom/flutter_webview_plugin/b$d;->b:Lcom/flutter_webview_plugin/b;

    invoke-static {p1, p3}, Lcom/flutter_webview_plugin/b;->o(Lcom/flutter_webview_plugin/b;Landroid/webkit/WebChromeClient$FileChooserParams;)[Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/flutter_webview_plugin/b$d;->b:Lcom/flutter_webview_plugin/b;

    invoke-static {v1, v0}, Lcom/flutter_webview_plugin/b;->d(Lcom/flutter_webview_plugin/b;Landroid/net/Uri;)Landroid/net/Uri;

    .line 7
    iget-object v1, p0, Lcom/flutter_webview_plugin/b$d;->b:Lcom/flutter_webview_plugin/b;

    invoke-static {v1, v0}, Lcom/flutter_webview_plugin/b;->h(Lcom/flutter_webview_plugin/b;Landroid/net/Uri;)Landroid/net/Uri;

    .line 8
    iget-object v0, p0, Lcom/flutter_webview_plugin/b$d;->b:Lcom/flutter_webview_plugin/b;

    invoke-static {v0, p1}, Lcom/flutter_webview_plugin/b;->p(Lcom/flutter_webview_plugin/b;[Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "output"

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcom/flutter_webview_plugin/b$d;->b:Lcom/flutter_webview_plugin/b;

    invoke-static {v3, v2}, Lcom/flutter_webview_plugin/b;->q(Lcom/flutter_webview_plugin/b;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/flutter_webview_plugin/b;->d(Lcom/flutter_webview_plugin/b;Landroid/net/Uri;)Landroid/net/Uri;

    .line 11
    iget-object v2, p0, Lcom/flutter_webview_plugin/b$d;->b:Lcom/flutter_webview_plugin/b;

    invoke-static {v2}, Lcom/flutter_webview_plugin/b;->c(Lcom/flutter_webview_plugin/b;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 12
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/flutter_webview_plugin/b$d;->b:Lcom/flutter_webview_plugin/b;

    invoke-static {v0, p1}, Lcom/flutter_webview_plugin/b;->f(Lcom/flutter_webview_plugin/b;[Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Lcom/flutter_webview_plugin/b$d;->b:Lcom/flutter_webview_plugin/b;

    invoke-static {v2, v0}, Lcom/flutter_webview_plugin/b;->q(Lcom/flutter_webview_plugin/b;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/flutter_webview_plugin/b;->h(Lcom/flutter_webview_plugin/b;Landroid/net/Uri;)Landroid/net/Uri;

    .line 16
    iget-object v0, p0, Lcom/flutter_webview_plugin/b$d;->b:Lcom/flutter_webview_plugin/b;

    invoke-static {v0}, Lcom/flutter_webview_plugin/b;->g(Lcom/flutter_webview_plugin/b;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 17
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    const/4 v1, 0x1

    if-lt p1, v0, :cond_4

    .line 19
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result p1

    if-ne p1, v1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 20
    :goto_0
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object p3

    const-string v0, "android.intent.extra.ALLOW_MULTIPLE"

    .line 21
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 22
    :cond_4
    new-instance p3, Landroid/content/Intent;

    const-string p1, "android.intent.action.GET_CONTENT"

    invoke-direct {p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "android.intent.category.OPENABLE"

    .line 23
    invoke-virtual {p3, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "*/*"

    .line 24
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/Intent;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/Intent;

    .line 26
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.CHOOSER"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.INTENT"

    .line 27
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p3, "android.intent.extra.INITIAL_INTENTS"

    .line 28
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 29
    iget-object p1, p0, Lcom/flutter_webview_plugin/b$d;->a:Landroid/app/Activity;

    invoke-virtual {p1, p2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return v1
.end method
