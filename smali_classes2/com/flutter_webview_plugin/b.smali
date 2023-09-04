.class Lcom/flutter_webview_plugin/b;
.super Ljava/lang/Object;
.source "WebviewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flutter_webview_plugin/b$g;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/net/Uri;

.field private d:Landroid/net/Uri;

.field private final e:Landroid/os/Handler;

.field f:Z

.field g:Landroid/webkit/WebView;

.field h:Landroid/app/Activity;

.field i:Lcom/flutter_webview_plugin/BrowserClient;

.field j:Lcom/flutter_webview_plugin/b$g;

.field k:Landroid/content/Context;

.field private l:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "activity",
            "context",
            "channelNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/flutter_webview_plugin/b;->f:Z

    .line 3
    iput-boolean v0, p0, Lcom/flutter_webview_plugin/b;->l:Z

    .line 4
    new-instance v0, Lcom/flutter_webview_plugin/ObservableWebView;

    invoke-direct {v0, p1}, Lcom/flutter_webview_plugin/ObservableWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    .line 5
    iput-object p1, p0, Lcom/flutter_webview_plugin/b;->h:Landroid/app/Activity;

    .line 6
    iput-object p2, p0, Lcom/flutter_webview_plugin/b;->k:Landroid/content/Context;

    .line 7
    new-instance v0, Lcom/flutter_webview_plugin/b$g;

    invoke-direct {v0, p0}, Lcom/flutter_webview_plugin/b$g;-><init>(Lcom/flutter_webview_plugin/b;)V

    iput-object v0, p0, Lcom/flutter_webview_plugin/b;->j:Lcom/flutter_webview_plugin/b$g;

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/flutter_webview_plugin/b;->e:Landroid/os/Handler;

    .line 9
    new-instance p2, Lcom/flutter_webview_plugin/b$a;

    invoke-direct {p2, p0}, Lcom/flutter_webview_plugin/b$a;-><init>(Lcom/flutter_webview_plugin/b;)V

    iput-object p2, p0, Lcom/flutter_webview_plugin/b;->i:Lcom/flutter_webview_plugin/BrowserClient;

    .line 10
    iget-object p2, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    new-instance v0, Lcom/flutter_webview_plugin/b$b;

    invoke-direct {v0, p0}, Lcom/flutter_webview_plugin/b$b;-><init>(Lcom/flutter_webview_plugin/b;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 11
    iget-object p2, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    check-cast p2, Lcom/flutter_webview_plugin/ObservableWebView;

    new-instance v0, Lcom/flutter_webview_plugin/b$c;

    invoke-direct {v0, p0}, Lcom/flutter_webview_plugin/b$c;-><init>(Lcom/flutter_webview_plugin/b;)V

    invoke-virtual {p2, v0}, Lcom/flutter_webview_plugin/ObservableWebView;->setOnScrollChangedCallback(Lcom/flutter_webview_plugin/ObservableWebView$OnScrollChangedCallback;)V

    .line 12
    iget-object p2, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/flutter_webview_plugin/b;->i:Lcom/flutter_webview_plugin/BrowserClient;

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 13
    iget-object p2, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    new-instance v0, Lcom/flutter_webview_plugin/b$d;

    invoke-direct {v0, p0, p1}, Lcom/flutter_webview_plugin/b$d;-><init>(Lcom/flutter_webview_plugin/b;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 14
    invoke-direct {p0, p3}, Lcom/flutter_webview_plugin/b;->J(Ljava/util/List;)V

    return-void
.end method

.method private C(Landroid/net/Uri;)J
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileUri"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/flutter_webview_plugin/b;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_size"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private D(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intentType"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    if-ne p1, v1, :cond_0

    const-string v0, "image-"

    const-string p1, ".jpg"

    goto :goto_0

    :cond_0
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    if-ne p1, v1, :cond_1

    const-string v0, "video-"

    const-string p1, ".mp4"

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/flutter_webview_plugin/b;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/flutter_webview_plugin/b;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 4
    :goto_1
    iget-object p1, p0, Lcom/flutter_webview_plugin/b;->k:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fileprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private E(Landroid/webkit/WebChromeClient$FileChooserParams;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method private F(Landroid/content/Intent;)[Landroid/net/Uri;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Uri;

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, p1, v1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 6
    new-array v2, v0, [Landroid/net/Uri;

    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private H([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arr"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    array-length v0, p1

    if-ne v0, v2, :cond_1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private J(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    new-instance v2, Lcom/flutter_webview_plugin/a;

    sget-object v3, Lcom/flutter_webview_plugin/FlutterWebviewPlugin;->a:Lio/flutter/plugin/common/MethodChannel;

    iget-object v4, p0, Lcom/flutter_webview_plugin/b;->e:Landroid/os/Handler;

    invoke-direct {v2, v3, v0, v4}, Lcom/flutter_webview_plugin/a;-><init>(Lio/flutter/plugin/common/MethodChannel;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "types"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/flutter_webview_plugin/b;->H([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "image"

    invoke-direct {p0, p1, v0}, Lcom/flutter_webview_plugin/b;->r([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private b([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "types"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/flutter_webview_plugin/b;->H([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "video"

    invoke-direct {p0, p1, v0}, Lcom/flutter_webview_plugin/b;->r([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lcom/flutter_webview_plugin/b;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/flutter_webview_plugin/b;->c:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic d(Lcom/flutter_webview_plugin/b;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flutter_webview_plugin/b;->c:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic e(Lcom/flutter_webview_plugin/b;Landroid/net/Uri;)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/flutter_webview_plugin/b;->C(Landroid/net/Uri;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic f(Lcom/flutter_webview_plugin/b;[Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/flutter_webview_plugin/b;->b([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/flutter_webview_plugin/b;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/flutter_webview_plugin/b;->d:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic h(Lcom/flutter_webview_plugin/b;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flutter_webview_plugin/b;->d:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic i(Lcom/flutter_webview_plugin/b;Landroid/content/Intent;)[Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/flutter_webview_plugin/b;->F(Landroid/content/Intent;)[Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcom/flutter_webview_plugin/b;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/flutter_webview_plugin/b;->b:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic k(Lcom/flutter_webview_plugin/b;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flutter_webview_plugin/b;->b:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic l(Lcom/flutter_webview_plugin/b;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/flutter_webview_plugin/b;->a:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic m(Lcom/flutter_webview_plugin/b;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flutter_webview_plugin/b;->a:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic n(Lcom/flutter_webview_plugin/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/flutter_webview_plugin/b;->l:Z

    return p0
.end method

.method static synthetic o(Lcom/flutter_webview_plugin/b;Landroid/webkit/WebChromeClient$FileChooserParams;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/flutter_webview_plugin/b;->E(Landroid/webkit/WebChromeClient$FileChooserParams;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lcom/flutter_webview_plugin/b;[Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/flutter_webview_plugin/b;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic q(Lcom/flutter_webview_plugin/b;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/flutter_webview_plugin/b;->D(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private r([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "pattern"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2
    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 2
    iget-object v0, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    return-void
.end method

.method private x()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    new-instance v1, Lcom/flutter_webview_plugin/b$e;

    invoke-direct {v1, p0}, Lcom/flutter_webview_plugin/b$e;-><init>(Lcom/flutter_webview_plugin/b;)V

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :goto_0
    return-void
.end method

.method private z(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prefix",
            "suffix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/flutter_webview_plugin/b;->k:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 4
    invoke-static {p1, p2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method A(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "call",
            "result"
        }
    .end annotation

    const-string v0, "code"

    .line 1
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    new-instance v1, Lcom/flutter_webview_plugin/b$f;

    invoke-direct {v1, p0, p2}, Lcom/flutter_webview_plugin/b$f;-><init>(Lcom/flutter_webview_plugin/b;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method B(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "result"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    :cond_0
    return-void
.end method

.method G(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "result"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    .line 2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method I(ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZZZZZZZZZLjava/lang/String;ZZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "withJavascript",
            "clearCache",
            "hidden",
            "clearCookies",
            "mediaPlaybackRequiresUserGesture",
            "userAgent",
            "url",
            "headers",
            "withZoom",
            "displayZoomControls",
            "withLocalStorage",
            "withOverviewMode",
            "scrollBar",
            "supportMultipleWindows",
            "appCacheEnabled",
            "allowFileURLs",
            "useWideViewPort",
            "invalidUrlRegex",
            "geolocationEnabled",
            "debuggingEnabled",
            "ignoreSSLErrors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZZZZZZZ",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p14

    move/from16 v6, p16

    .line 1
    iget-object v7, v0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    move v8, p1

    invoke-virtual {v7, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2
    iget-object v7, v0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 3
    iget-object v7, v0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 4
    iget-object v4, v0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    move/from16 v7, p10

    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 5
    iget-object v4, v0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    move/from16 v7, p11

    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 6
    iget-object v4, v0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    move/from16 v7, p12

    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 7
    iget-object v4, v0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 8
    iget-object v4, v0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 9
    iget-object v4, v0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    move/from16 v5, p15

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 10
    iget-object v4, v0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 11
    iget-object v4, v0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 12
    iget-object v4, v0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    move/from16 v5, p17

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 13
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 14
    iget-object v5, v0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    move v6, p5

    invoke-virtual {v5, p5}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_0
    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    .line 15
    invoke-static/range {p20 .. p20}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_1
    move/from16 v5, p21

    .line 16
    iput-boolean v5, v0, Lcom/flutter_webview_plugin/b;->l:Z

    .line 17
    iget-object v5, v0, Lcom/flutter_webview_plugin/b;->i:Lcom/flutter_webview_plugin/BrowserClient;

    move-object/from16 v6, p18

    invoke-virtual {v5, v6}, Lcom/flutter_webview_plugin/BrowserClient;->updateInvalidUrlRegex(Ljava/lang/String;)V

    if-eqz p19, :cond_2

    .line 18
    iget-object v5, v0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    :cond_2
    const/16 v5, 0x15

    if-lt v4, v5, :cond_3

    .line 19
    iget-object v4, v0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_3
    if-eqz p2, :cond_4

    .line 20
    invoke-direct {p0}, Lcom/flutter_webview_plugin/b;->w()V

    :cond_4
    if-eqz p3, :cond_5

    .line 21
    iget-object v4, v0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_5
    if-eqz p4, :cond_6

    .line 22
    invoke-direct {p0}, Lcom/flutter_webview_plugin/b;->x()V

    :cond_6
    if-eqz v1, :cond_7

    .line 23
    iget-object v4, v0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, p6}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_7
    if-nez p13, :cond_8

    .line 24
    iget-object v1, v0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    :cond_8
    if-eqz v3, :cond_9

    .line 25
    iget-object v1, v0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 26
    :cond_9
    iget-object v1, v0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method K(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "result"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    :cond_0
    return-void
.end method

.method L(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method M(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "headers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method N(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method O(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "result"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method P(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "result"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    return-void
.end method

.method s(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "result"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void
.end method

.method t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    return-void
.end method

.method y(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "result"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 3
    iget-object v0, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/flutter_webview_plugin/b;->g:Landroid/webkit/WebView;

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :cond_1
    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/flutter_webview_plugin/b;->f:Z

    .line 7
    sget-object p2, Lcom/flutter_webview_plugin/FlutterWebviewPlugin;->a:Lio/flutter/plugin/common/MethodChannel;

    const-string v0, "onDestroy"

    invoke-virtual {p2, v0, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
