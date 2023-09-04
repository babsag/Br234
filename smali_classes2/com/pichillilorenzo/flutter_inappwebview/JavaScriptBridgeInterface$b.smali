.class Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$b;
.super Ljava/lang/Object;
.source "JavaScriptBridgeInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;->_callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$handlerName",
            "val$webView",
            "val$obj",
            "val$_callHandlerID"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$b;->e:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$b;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$b;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$b;->a:Ljava/lang/String;

    const-string v1, "onPrint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$b;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->printCurrentPage()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$b;->e:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;->channel:Lio/flutter/plugin/common/MethodChannel;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$b;->c:Ljava/util/Map;

    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$b$a;

    invoke-direct {v2, p0}, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$b$a;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$b;)V

    const-string v3, "onCallJsHandler"

    invoke-virtual {v0, v3, v1, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method
