.class public Lio/flutter/plugins/share/SharePlugin;
.super Ljava/lang/Object;
.source "SharePlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# instance fields
.field private a:Lio/flutter/plugins/share/a;

.field private b:Lio/flutter/plugins/share/b;

.field private c:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "messenger"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "plugins.flutter.io/share"

    invoke-direct {v0, p2, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/share/SharePlugin;->c:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    new-instance p2, Lio/flutter/plugins/share/b;

    invoke-direct {p2, p1}, Lio/flutter/plugins/share/b;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lio/flutter/plugins/share/SharePlugin;->b:Lio/flutter/plugins/share/b;

    .line 3
    new-instance p1, Lio/flutter/plugins/share/a;

    invoke-direct {p1, p2}, Lio/flutter/plugins/share/a;-><init>(Lio/flutter/plugins/share/b;)V

    iput-object p1, p0, Lio/flutter/plugins/share/SharePlugin;->a:Lio/flutter/plugins/share/a;

    .line 4
    iget-object p2, p0, Lio/flutter/plugins/share/SharePlugin;->c:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p2, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/share/SharePlugin;->b:Lio/flutter/plugins/share/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugins/share/b;->a(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/share/SharePlugin;->c:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

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
    new-instance v0, Lio/flutter/plugins/share/SharePlugin;

    invoke-direct {v0}, Lio/flutter/plugins/share/SharePlugin;-><init>()V

    .line 2
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lio/flutter/plugins/share/SharePlugin;->a(Landroid/app/Activity;Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
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
    iget-object v0, p0, Lio/flutter/plugins/share/SharePlugin;->b:Lio/flutter/plugins/share/b;

    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/flutter/plugins/share/b;->a(Landroid/app/Activity;)V

    return-void
.end method

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

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/share/SharePlugin;->a(Landroid/app/Activity;Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/share/SharePlugin;->b()V

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/flutter/plugins/share/SharePlugin;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
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
    iget-object p1, p0, Lio/flutter/plugins/share/SharePlugin;->c:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 2
    iput-object v0, p0, Lio/flutter/plugins/share/SharePlugin;->c:Lio/flutter/plugin/common/MethodChannel;

    .line 3
    iput-object v0, p0, Lio/flutter/plugins/share/SharePlugin;->b:Lio/flutter/plugins/share/b;

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
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
    invoke-virtual {p0, p1}, Lio/flutter/plugins/share/SharePlugin;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    return-void
.end method
