.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView$a;
.super Ljava/lang/Object;
.source "InputAwareWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->setInputConnectionTarget(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$targetView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView$a;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView$a;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView$a;->a:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView$a;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->containerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    :cond_0
    return-void
.end method
