.class public Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;
.super Landroid/webkit/WebView;
.source "InputAwareWebView.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/a;

.field public containerView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->containerView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->containerView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defaultStyle"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->containerView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "containerView"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->containerView:Landroid/view/View;

    return-void
.end method

.method private a()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 3
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "show"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->containerView:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v0, "InputAwareWebView"

    const-string v1, "Can\'t reset the input connection to the container view because there is none."

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    invoke-direct {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->setInputConnectionTarget(Landroid/view/View;)V

    return-void
.end method

.method private setInputConnectionTarget(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "targetView"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->containerView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string p1, "InputAwareWebView"

    const-string v0, "Can\'t set the input connection target because there is no containerView to use as a handler."

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 4
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->containerView:Landroid/view/View;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView$a;

    invoke-direct {v1, p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView$a;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->a:Landroid/view/View;

    .line 2
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->a:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroid/webkit/WebView;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->containerView:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v0, "InputAwareWebView"

    const-string v1, "Can\'t create a proxy view because there\'s no container view. Text input may not work."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-super {p0, p1}, Landroid/webkit/WebView;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 7
    :cond_1
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/a;

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/a;-><init>(Landroid/view/View;Landroid/view/View;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/a;

    .line 9
    invoke-direct {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->setInputConnectionTarget(Landroid/view/View;)V

    .line 10
    invoke-super {p0, p1}, Landroid/webkit/WebView;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public clearFocus()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->clearFocus()V

    .line 2
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->b()V

    return-void
.end method

.method dispose()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->b()V

    return-void
.end method

.method public lockInputConnection()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/a;->a(Z)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "focused",
            "direction",
            "previouslyFocusedRect"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public setContainerView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "containerView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->containerView:Landroid/view/View;

    .line 2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "InputAwareWebView"

    const-string v1, "The containerView has changed while the proxyAdapterView exists."

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/a;

    invoke-direct {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->setInputConnectionTarget(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public unlockInputConnection()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->b:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/a;->a(Z)V

    return-void
.end method
