.class public final Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;
.super Ljava/lang/Object;
.source "PermissionHandlerPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# instance fields
.field private methodCallHandler:Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private methodChannel:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registrar"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;

    invoke-direct {v0}, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;-><init>()V

    .line 2
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;->startListening(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 3
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activeContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/baseflow/permissionhandler/f;

    invoke-direct {v2, p0}, Lcom/baseflow/permissionhandler/f;-><init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V

    .line 6
    new-instance v3, Lcom/baseflow/permissionhandler/g;

    invoke-direct {v3, p0}, Lcom/baseflow/permissionhandler/g;-><init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;->startListeningToActivity(Landroid/app/Activity;Lcom/baseflow/permissionhandler/PermissionManager$ActivityRegistry;Lcom/baseflow/permissionhandler/PermissionManager$PermissionRegistry;)V

    :cond_0
    return-void
.end method

.method private startListening(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "applicationContext",
            "messenger"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "flutter.baseflow.com/permissions/methods"

    invoke-direct {v0, p2, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    new-instance p2, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;

    new-instance v0, Lcom/baseflow/permissionhandler/AppSettingsManager;

    invoke-direct {v0}, Lcom/baseflow/permissionhandler/AppSettingsManager;-><init>()V

    new-instance v1, Lcom/baseflow/permissionhandler/PermissionManager;

    invoke-direct {v1}, Lcom/baseflow/permissionhandler/PermissionManager;-><init>()V

    new-instance v2, Lcom/baseflow/permissionhandler/ServiceManager;

    invoke-direct {v2}, Lcom/baseflow/permissionhandler/ServiceManager;-><init>()V

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;-><init>(Landroid/content/Context;Lcom/baseflow/permissionhandler/AppSettingsManager;Lcom/baseflow/permissionhandler/PermissionManager;Lcom/baseflow/permissionhandler/ServiceManager;)V

    iput-object p2, p0, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;->methodCallHandler:Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;

    .line 3
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1, p2}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method private startListeningToActivity(Landroid/app/Activity;Lcom/baseflow/permissionhandler/PermissionManager$ActivityRegistry;Lcom/baseflow/permissionhandler/PermissionManager$PermissionRegistry;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "activityRegistry",
            "permissionRegistry"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;->methodCallHandler:Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->setActivity(Landroid/app/Activity;)V

    .line 3
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;->methodCallHandler:Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;

    invoke-virtual {p1, p2}, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->setActivityRegistry(Lcom/baseflow/permissionhandler/PermissionManager$ActivityRegistry;)V

    .line 4
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;->methodCallHandler:Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;

    invoke-virtual {p1, p3}, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->setPermissionRegistry(Lcom/baseflow/permissionhandler/PermissionManager$PermissionRegistry;)V

    :cond_0
    return-void
.end method

.method private stopListening()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 2
    iput-object v1, p0, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 3
    iput-object v1, p0, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;->methodCallHandler:Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;

    return-void
.end method

.method private stopListeningToActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;->methodCallHandler:Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->setActivity(Landroid/app/Activity;)V

    .line 3
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;->methodCallHandler:Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;

    invoke-virtual {v0, v1}, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->setActivityRegistry(Lcom/baseflow/permissionhandler/PermissionManager$ActivityRegistry;)V

    .line 4
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;->methodCallHandler:Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;

    invoke-virtual {v0, v1}, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->setPermissionRegistry(Lcom/baseflow/permissionhandler/PermissionManager$PermissionRegistry;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 3
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
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/baseflow/permissionhandler/c;

    invoke-direct {v1, p1}, Lcom/baseflow/permissionhandler/c;-><init>(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 3
    new-instance v2, Lcom/baseflow/permissionhandler/b;

    invoke-direct {v2, p1}, Lcom/baseflow/permissionhandler/b;-><init>(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;->startListeningToActivity(Landroid/app/Activity;Lcom/baseflow/permissionhandler/PermissionManager$ActivityRegistry;Lcom/baseflow/permissionhandler/PermissionManager$PermissionRegistry;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1
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
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;->startListening(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;->stopListeningToActivity()V

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;->onDetachedFromActivity()V

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
    invoke-direct {p0}, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;->stopListening()V

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0
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
    invoke-virtual {p0, p1}, Lcom/baseflow/permissionhandler/PermissionHandlerPlugin;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    return-void
.end method
