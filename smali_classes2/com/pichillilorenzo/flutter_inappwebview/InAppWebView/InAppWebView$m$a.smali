.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$m$a;
.super Ljava/lang/Object;
.source "InAppWebView.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$m;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$m;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$m;)V
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
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$m$a;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "true"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$m$a;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$m;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$m;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->headlessHandler:Landroid/os/Handler;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->checkContextMenuShouldBeClosedTask:Ljava/lang/Runnable;

    iget p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->newCheckContextMenuShouldBeClosedTaskTask:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$m$a;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$m;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$m;->a:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->hideContextMenu()V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$m$a;->a(Ljava/lang/String;)V

    return-void
.end method
