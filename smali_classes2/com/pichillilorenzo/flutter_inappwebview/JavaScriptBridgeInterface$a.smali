.class Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$a;
.super Ljava/lang/Object;
.source "JavaScriptBridgeInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;->_hideContextMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

.field final synthetic b:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$webView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$a;->b:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$a;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$a;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->hideContextMenu()V

    :cond_0
    return-void
.end method
