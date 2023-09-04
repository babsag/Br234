.class public Lcom/baseflow/geolocator/GeolocatorPlugin;
.super Ljava/lang/Object;
.source "GeolocatorPlugin.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;
.implements Lcom/baseflow/geolocator/OnCompletionListener;
.implements Lio/flutter/plugin/common/PluginRegistry$ViewDestroyListener;


# static fields
.field private static final EVENT_CHANNEL_NAME:Ljava/lang/String; = "flutter.baseflow.com/geolocator/events"

.field private static final METHOD_CHANNEL_NAME:Ljava/lang/String; = "flutter.baseflow.com/geolocator/methods"


# instance fields
.field private final mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

.field private mStreamLocationTask:Lcom/baseflow/geolocator/tasks/Task;

.field private final mTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/baseflow/geolocator/tasks/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registrar"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->mTasks:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-void
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registrar"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/baseflow/geolocator/GeolocatorPlugin;

    invoke-direct {v0, p0}, Lcom/baseflow/geolocator/GeolocatorPlugin;-><init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V

    .line 2
    new-instance v1, Lio/flutter/plugin/common/MethodChannel;

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    const-string v3, "flutter.baseflow.com/geolocator/methods"

    invoke-direct {v1, v2, v3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 3
    new-instance v2, Lio/flutter/plugin/common/EventChannel;

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v3

    const-string v4, "flutter.baseflow.com/geolocator/events"

    invoke-direct {v2, v3, v4}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 5
    invoke-virtual {v2, v0}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 6
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->addViewDestroyListener(Lio/flutter/plugin/common/PluginRegistry$ViewDestroyListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arguments"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->mStreamLocationTask:Lcom/baseflow/geolocator/tasks/Task;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/Task;->stopTask()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->mStreamLocationTask:Lcom/baseflow/geolocator/tasks/Task;

    return-void
.end method

.method public onCompletion(Ljava/util/UUID;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskID"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->mTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "eventSink"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->mStreamLocationTask:Lcom/baseflow/geolocator/tasks/Task;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const-string v0, "ALREADY_LISTENING"

    const-string v1, "You are already listening for location changes. Create a new instance or stop listening to the current stream."

    .line 2
    invoke-interface {p2, v0, v1, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-static {v0, p2, p1, p0}, Lcom/baseflow/geolocator/tasks/TaskFactory;->createStreamLocationUpdatesTask(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/plugin/common/EventChannel$EventSink;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)Lcom/baseflow/geolocator/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->mStreamLocationTask:Lcom/baseflow/geolocator/tasks/Task;

    .line 4
    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/Task;->startTask()V

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3
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
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "distanceBetween"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "placemarkFromAddress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "getLastKnownPosition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "placemarkFromCoordinates"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "getCurrentPosition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_1

    .line 3
    :pswitch_0
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-static {v0, p2, p1, p0}, Lcom/baseflow/geolocator/tasks/TaskFactory;->createCalculateDistanceTask(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)Lcom/baseflow/geolocator/tasks/Task;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->mTasks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/Task;->getTaskID()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/Task;->startTask()V

    goto :goto_1

    .line 6
    :pswitch_1
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-static {v0, p2, p1, p0}, Lcom/baseflow/geolocator/tasks/TaskFactory;->createForwardGeocodingTask(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)Lcom/baseflow/geolocator/tasks/Task;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->mTasks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/Task;->getTaskID()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/Task;->startTask()V

    goto :goto_1

    .line 9
    :pswitch_2
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-static {v0, p2, p1, p0}, Lcom/baseflow/geolocator/tasks/TaskFactory;->createLastKnownLocationTask(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)Lcom/baseflow/geolocator/tasks/Task;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->mTasks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/Task;->getTaskID()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/Task;->startTask()V

    goto :goto_1

    .line 12
    :pswitch_3
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-static {v0, p2, p1, p0}, Lcom/baseflow/geolocator/tasks/TaskFactory;->createReverseGeocodingTask(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)Lcom/baseflow/geolocator/tasks/Task;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->mTasks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/Task;->getTaskID()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/Task;->startTask()V

    goto :goto_1

    .line 15
    :pswitch_4
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-static {v0, p2, p1, p0}, Lcom/baseflow/geolocator/tasks/TaskFactory;->createCurrentLocationTask(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)Lcom/baseflow/geolocator/tasks/Task;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/baseflow/geolocator/GeolocatorPlugin;->mTasks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/Task;->getTaskID()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/Task;->startTask()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x68b9fc74 -> :sswitch_4
        -0x4c16c303 -> :sswitch_3
        -0x44f2ea20 -> :sswitch_2
        0x2ddb6ff6 -> :sswitch_1
        0x69db0a53 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewDestroy(Lio/flutter/view/FlutterNativeView;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flutterNativeView"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/baseflow/geolocator/GeolocatorPlugin;->onCancel(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method
