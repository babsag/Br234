.class public Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;
.super Ljava/lang/Object;
.source "GoogleApiAvailabilityPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# instance fields
.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private methodCallHandler:Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->unregisterPlugin()V

    return-void
.end method

.method private registerPlugin(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "messenger"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;

    invoke-direct {v0, p1}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->methodCallHandler:Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;

    .line 2
    new-instance p1, Lio/flutter/plugin/common/MethodChannel;

    const-string v0, "flutter.baseflow.com/google_api_availability/methods"

    invoke-direct {p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 3
    iget-object p2, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->methodCallHandler:Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;

    invoke-virtual {p1, p2}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registrar"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;

    invoke-direct {v0}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;-><init>()V

    .line 2
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->registerPlugin(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 3
    iget-object v1, v0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->methodCallHandler:Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->setActivity(Landroid/app/Activity;)V

    .line 4
    new-instance v1, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin$1;

    invoke-direct {v1, v0}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin$1;-><init>(Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;)V

    invoke-interface {p0, v1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->addViewDestroyListener(Lio/flutter/plugin/common/PluginRegistry$ViewDestroyListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-void
.end method

.method private unregisterPlugin()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 2
    iput-object v1, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

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
    iget-object v0, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->methodCallHandler:Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;

    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->setActivity(Landroid/app/Activity;)V

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
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->registerPlugin(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->methodCallHandler:Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->methodCallHandler:Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->unregisterPlugin()V

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->methodCallHandler:Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;

    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->setActivity(Landroid/app/Activity;)V

    return-void
.end method
