.class Lcom/flutter_webview_plugin/b$g;
.super Ljava/lang/Object;
.source "WebviewManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x7
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flutter_webview_plugin/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
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
    iput-object p1, p0, Lcom/flutter_webview_plugin/b$g;->a:Lcom/flutter_webview_plugin/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "intent"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x15

    if-lt v0, v5, :cond_3

    if-ne p1, v4, :cond_6

    if-ne p2, v1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/flutter_webview_plugin/b$g;->a:Lcom/flutter_webview_plugin/b;

    invoke-static {p1}, Lcom/flutter_webview_plugin/b;->c(Lcom/flutter_webview_plugin/b;)Landroid/net/Uri;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/flutter_webview_plugin/b$g;->a:Lcom/flutter_webview_plugin/b;

    invoke-static {p1}, Lcom/flutter_webview_plugin/b;->c(Lcom/flutter_webview_plugin/b;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/flutter_webview_plugin/b;->e(Lcom/flutter_webview_plugin/b;Landroid/net/Uri;)J

    move-result-wide p1

    cmp-long v5, p1, v0

    if-lez v5, :cond_0

    new-array p1, v4, [Landroid/net/Uri;

    .line 3
    iget-object p2, p0, Lcom/flutter_webview_plugin/b$g;->a:Lcom/flutter_webview_plugin/b;

    invoke-static {p2}, Lcom/flutter_webview_plugin/b;->c(Lcom/flutter_webview_plugin/b;)Landroid/net/Uri;

    move-result-object p2

    aput-object p2, p1, v2

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/flutter_webview_plugin/b$g;->a:Lcom/flutter_webview_plugin/b;

    invoke-static {p1}, Lcom/flutter_webview_plugin/b;->g(Lcom/flutter_webview_plugin/b;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/flutter_webview_plugin/b$g;->a:Lcom/flutter_webview_plugin/b;

    invoke-static {p1}, Lcom/flutter_webview_plugin/b;->g(Lcom/flutter_webview_plugin/b;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/flutter_webview_plugin/b;->e(Lcom/flutter_webview_plugin/b;Landroid/net/Uri;)J

    move-result-wide p1

    cmp-long v5, p1, v0

    if-lez v5, :cond_1

    new-array p1, v4, [Landroid/net/Uri;

    .line 5
    iget-object p2, p0, Lcom/flutter_webview_plugin/b$g;->a:Lcom/flutter_webview_plugin/b;

    invoke-static {p2}, Lcom/flutter_webview_plugin/b;->g(Lcom/flutter_webview_plugin/b;)Landroid/net/Uri;

    move-result-object p2

    aput-object p2, p1, v2

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 6
    iget-object p1, p0, Lcom/flutter_webview_plugin/b$g;->a:Lcom/flutter_webview_plugin/b;

    invoke-static {p1, p3}, Lcom/flutter_webview_plugin/b;->i(Lcom/flutter_webview_plugin/b;Landroid/content/Intent;)[Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v3

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/flutter_webview_plugin/b$g;->a:Lcom/flutter_webview_plugin/b;

    invoke-static {p2}, Lcom/flutter_webview_plugin/b;->j(Lcom/flutter_webview_plugin/b;)Landroid/webkit/ValueCallback;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 8
    iget-object p2, p0, Lcom/flutter_webview_plugin/b$g;->a:Lcom/flutter_webview_plugin/b;

    invoke-static {p2}, Lcom/flutter_webview_plugin/b;->j(Lcom/flutter_webview_plugin/b;)Landroid/webkit/ValueCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/flutter_webview_plugin/b$g;->a:Lcom/flutter_webview_plugin/b;

    invoke-static {p1, v3}, Lcom/flutter_webview_plugin/b;->k(Lcom/flutter_webview_plugin/b;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    goto :goto_2

    :cond_3
    if-ne p1, v4, :cond_6

    if-ne p2, v1, :cond_4

    if-eqz p3, :cond_4

    .line 10
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v3

    .line 11
    :goto_1
    iget-object p2, p0, Lcom/flutter_webview_plugin/b$g;->a:Lcom/flutter_webview_plugin/b;

    invoke-static {p2}, Lcom/flutter_webview_plugin/b;->l(Lcom/flutter_webview_plugin/b;)Landroid/webkit/ValueCallback;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 12
    iget-object p2, p0, Lcom/flutter_webview_plugin/b$g;->a:Lcom/flutter_webview_plugin/b;

    invoke-static {p2}, Lcom/flutter_webview_plugin/b;->l(Lcom/flutter_webview_plugin/b;)Landroid/webkit/ValueCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/flutter_webview_plugin/b$g;->a:Lcom/flutter_webview_plugin/b;

    invoke-static {p1, v3}, Lcom/flutter_webview_plugin/b;->m(Lcom/flutter_webview_plugin/b;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    :cond_5
    :goto_2
    const/4 v2, 0x1

    :cond_6
    return v2
.end method
