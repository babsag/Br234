.class public Lio/flutter/plugins/connectivity/ConnectivityPlugin;
.super Ljava/lang/Object;
.source "ConnectivityPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;


# instance fields
.field private a:Lio/flutter/plugin/common/MethodChannel;

.field private b:Lio/flutter/plugin/common/EventChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messenger",
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "plugins.flutter.io/connectivity"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/connectivity/ConnectivityPlugin;->a:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    new-instance v0, Lio/flutter/plugin/common/EventChannel;

    const-string v1, "plugins.flutter.io/connectivity_status"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/connectivity/ConnectivityPlugin;->b:Lio/flutter/plugin/common/EventChannel;

    const-string p1, "connectivity"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 4
    new-instance v0, Lio/flutter/plugins/connectivity/a;

    invoke-direct {v0, p1}, Lio/flutter/plugins/connectivity/a;-><init>(Landroid/net/ConnectivityManager;)V

    .line 5
    new-instance p1, Lio/flutter/plugins/connectivity/c;

    invoke-direct {p1, v0}, Lio/flutter/plugins/connectivity/c;-><init>(Lio/flutter/plugins/connectivity/a;)V

    .line 6
    new-instance v1, Lio/flutter/plugins/connectivity/b;

    invoke-direct {v1, p2, v0}, Lio/flutter/plugins/connectivity/b;-><init>(Landroid/content/Context;Lio/flutter/plugins/connectivity/a;)V

    .line 7
    iget-object p2, p0, Lio/flutter/plugins/connectivity/ConnectivityPlugin;->a:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p2, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 8
    iget-object p1, p0, Lio/flutter/plugins/connectivity/ConnectivityPlugin;->b:Lio/flutter/plugin/common/EventChannel;

    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/connectivity/ConnectivityPlugin;->a:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/connectivity/ConnectivityPlugin;->b:Lio/flutter/plugin/common/EventChannel;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 3
    iput-object v1, p0, Lio/flutter/plugins/connectivity/ConnectivityPlugin;->a:Lio/flutter/plugin/common/MethodChannel;

    .line 4
    iput-object v1, p0, Lio/flutter/plugins/connectivity/ConnectivityPlugin;->b:Lio/flutter/plugin/common/EventChannel;

    return-void
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registrar"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/connectivity/ConnectivityPlugin;

    invoke-direct {v0}, Lio/flutter/plugins/connectivity/ConnectivityPlugin;-><init>()V

    .line 2
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lio/flutter/plugins/connectivity/ConnectivityPlugin;->a(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/connectivity/ConnectivityPlugin;->a(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/connectivity/ConnectivityPlugin;->b()V

    return-void
.end method
