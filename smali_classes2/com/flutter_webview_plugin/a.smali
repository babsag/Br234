.class Lcom/flutter_webview_plugin/a;
.super Ljava/lang/Object;
.source "JavaScriptChannel.java"


# instance fields
.field private final a:Lio/flutter/plugin/common/MethodChannel;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/MethodChannel;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "methodChannel",
            "javaScriptChannelName",
            "platformThreadHandler"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/flutter_webview_plugin/a;->a:Lio/flutter/plugin/common/MethodChannel;

    .line 3
    iput-object p2, p0, Lcom/flutter_webview_plugin/a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/flutter_webview_plugin/a;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/flutter_webview_plugin/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/flutter_webview_plugin/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/flutter_webview_plugin/a;)Lio/flutter/plugin/common/MethodChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/flutter_webview_plugin/a;->a:Lio/flutter/plugin/common/MethodChannel;

    return-object p0
.end method


# virtual methods
.method public postMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/flutter_webview_plugin/a$a;

    invoke-direct {v0, p0, p1}, Lcom/flutter_webview_plugin/a$a;-><init>(Lcom/flutter_webview_plugin/a;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/flutter_webview_plugin/a;->c:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/flutter_webview_plugin/a;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
