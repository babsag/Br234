.class Lcom/flutter_webview_plugin/b$b;
.super Ljava/lang/Object;
.source "WebviewManager.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flutter_webview_plugin/b;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flutter_webview_plugin/b;


# direct methods
.method constructor <init>(Lcom/flutter_webview_plugin/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/flutter_webview_plugin/b$b;->a:Lcom/flutter_webview_plugin/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/flutter_webview_plugin/b$b;->a:Lcom/flutter_webview_plugin/b;

    iget-object p1, p1, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/flutter_webview_plugin/b$b;->a:Lcom/flutter_webview_plugin/b;

    iget-object p1, p1, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/flutter_webview_plugin/FlutterWebviewPlugin;->a:Lio/flutter/plugin/common/MethodChannel;

    const/4 p2, 0x0

    const-string p3, "onBack"

    invoke-virtual {p1, p3, p2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
