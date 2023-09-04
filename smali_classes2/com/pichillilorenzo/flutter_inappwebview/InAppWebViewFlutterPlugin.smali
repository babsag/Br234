.class public Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;
.super Ljava/lang/Object;
.source "InAppWebViewFlutterPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "InAppWebViewFlutterPL"

.field public static chromeSafariBrowserManager:Lcom/pichillilorenzo/flutter_inappwebview/ChromeSafariBrowserManager;

.field public static credentialDatabaseHandler:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;

.field public static filePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public static filePathCallbackLegacy:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public static headlessInAppWebViewManager:Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;

.field public static inAppBrowserManager:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowserManager;

.field public static inAppWebViewStatic:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;

.field public static myCookieManager:Lcom/pichillilorenzo/flutter_inappwebview/MyCookieManager;

.field public static myWebStorage:Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Activity;Lio/flutter/plugin/platform/PlatformViewRegistry;Lio/flutter/view/FlutterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "applicationContext",
            "messenger",
            "activity",
            "platformViewRegistry",
            "flutterView"
        }
    .end annotation

    .line 1
    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->applicationContext:Landroid/content/Context;

    .line 2
    sput-object p3, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activity:Landroid/app/Activity;

    .line 3
    sput-object p2, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowserManager;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowserManager;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->inAppBrowserManager:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowserManager;

    .line 5
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->headlessInAppWebViewManager:Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;

    .line 6
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/ChromeSafariBrowserManager;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeSafariBrowserManager;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->chromeSafariBrowserManager:Lcom/pichillilorenzo/flutter_inappwebview/ChromeSafariBrowserManager;

    .line 7
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebViewFactory;

    invoke-direct {p1, p2, p5}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebViewFactory;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Landroid/view/View;)V

    const-string p3, "com.pichillilorenzo/flutter_inappwebview"

    invoke-interface {p4, p3, p1}, Lio/flutter/plugin/platform/PlatformViewRegistry;->registerViewFactory(Ljava/lang/String;Lio/flutter/plugin/platform/PlatformViewFactory;)Z

    .line 8
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->inAppWebViewStatic:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;

    .line 9
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/MyCookieManager;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/MyCookieManager;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->myCookieManager:Lcom/pichillilorenzo/flutter_inappwebview/MyCookieManager;

    .line 10
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->myWebStorage:Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;

    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p1, p3, :cond_0

    .line 12
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->credentialDatabaseHandler:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;

    :cond_0
    return-void
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registrar"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;

    invoke-direct {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;-><init>()V

    .line 2
    sput-object p0, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->registrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    .line 3
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->platformViewRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;

    move-result-object v4

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->view()Lio/flutter/view/FlutterView;

    move-result-object v5

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->a(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Activity;Lio/flutter/plugin/platform/PlatformViewRegistry;Lio/flutter/view/FlutterView;)V

    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityPluginBinding"
        }
    .end annotation

    .line 1
    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 2
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getFlutterAssets()Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    move-result-object v0

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->flutterAssets:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    .line 2
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v3

    sget-object v4, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getPlatformViewRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->a(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Activity;Lio/flutter/plugin/platform/PlatformViewRegistry;Lio/flutter/view/FlutterView;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 2
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 2
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->inAppBrowserManager:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowserManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowserManager;->dispose()V

    .line 3
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->inAppBrowserManager:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowserManager;

    .line 4
    :cond_0
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->headlessInAppWebViewManager:Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;->dispose()V

    .line 6
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->headlessInAppWebViewManager:Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;

    .line 7
    :cond_1
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->chromeSafariBrowserManager:Lcom/pichillilorenzo/flutter_inappwebview/ChromeSafariBrowserManager;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeSafariBrowserManager;->dispose()V

    .line 9
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->chromeSafariBrowserManager:Lcom/pichillilorenzo/flutter_inappwebview/ChromeSafariBrowserManager;

    .line 10
    :cond_2
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->myCookieManager:Lcom/pichillilorenzo/flutter_inappwebview/MyCookieManager;

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/MyCookieManager;->dispose()V

    .line 12
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->myCookieManager:Lcom/pichillilorenzo/flutter_inappwebview/MyCookieManager;

    .line 13
    :cond_3
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->myWebStorage:Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;->dispose()V

    .line 15
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->myWebStorage:Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;

    .line 16
    :cond_4
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->credentialDatabaseHandler:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;

    if-eqz p1, :cond_5

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_5

    .line 17
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->credentialDatabaseHandler:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;

    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;->dispose()V

    .line 18
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->credentialDatabaseHandler:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;

    .line 19
    :cond_5
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->inAppWebViewStatic:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;

    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;->dispose()V

    .line 21
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->inAppWebViewStatic:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;

    .line 22
    :cond_6
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->filePathCallbackLegacy:Landroid/webkit/ValueCallback;

    .line 23
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->filePathCallback:Landroid/webkit/ValueCallback;

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityPluginBinding"
        }
    .end annotation

    .line 1
    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 2
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activity:Landroid/app/Activity;

    return-void
.end method
