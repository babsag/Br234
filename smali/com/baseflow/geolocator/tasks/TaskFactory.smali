.class public Lcom/baseflow/geolocator/tasks/TaskFactory;
.super Ljava/lang/Object;
.source "TaskFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCalculateDistanceTask(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)Lcom/baseflow/geolocator/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "registrar",
            "result",
            "arguments",
            "completionListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugin/common/PluginRegistry$Registrar;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            "Ljava/lang/Object;",
            "Lcom/baseflow/geolocator/OnCompletionListener;",
            ")",
            "Lcom/baseflow/geolocator/tasks/Task<",
            "Lcom/baseflow/geolocator/data/CalculateDistanceOptions;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/baseflow/geolocator/data/CalculateDistanceOptions;->parseArguments(Ljava/lang/Object;)Lcom/baseflow/geolocator/data/CalculateDistanceOptions;

    move-result-object p2

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/baseflow/geolocator/tasks/TaskContext;->buildForMethodResult(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)Lcom/baseflow/geolocator/tasks/TaskContext;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/baseflow/geolocator/tasks/CalculateDistanceTask;

    invoke-direct {p1, p0}, Lcom/baseflow/geolocator/tasks/CalculateDistanceTask;-><init>(Lcom/baseflow/geolocator/tasks/TaskContext;)V

    return-object p1
.end method

.method public static createCurrentLocationTask(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)Lcom/baseflow/geolocator/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "registrar",
            "result",
            "arguments",
            "completionListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugin/common/PluginRegistry$Registrar;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            "Ljava/lang/Object;",
            "Lcom/baseflow/geolocator/OnCompletionListener;",
            ")",
            "Lcom/baseflow/geolocator/tasks/Task<",
            "Lcom/baseflow/geolocator/data/LocationOptions;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/baseflow/geolocator/data/LocationOptions;->parseArguments(Ljava/lang/Object;)Lcom/baseflow/geolocator/data/LocationOptions;

    move-result-object p2

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/baseflow/geolocator/tasks/TaskContext;->buildForMethodResult(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)Lcom/baseflow/geolocator/tasks/TaskContext;

    move-result-object p0

    .line 3
    invoke-virtual {p2}, Lcom/baseflow/geolocator/data/LocationOptions;->isForceAndroidLocationManager()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;

    invoke-direct {p1, p0, p2}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;-><init>(Lcom/baseflow/geolocator/tasks/TaskContext;Z)V

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;

    invoke-direct {p1, p0, p2}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;-><init>(Lcom/baseflow/geolocator/tasks/TaskContext;Z)V

    return-object p1
.end method

.method public static createForwardGeocodingTask(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)Lcom/baseflow/geolocator/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "registrar",
            "result",
            "arguments",
            "completionListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugin/common/PluginRegistry$Registrar;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            "Ljava/lang/Object;",
            "Lcom/baseflow/geolocator/OnCompletionListener;",
            ")",
            "Lcom/baseflow/geolocator/tasks/Task<",
            "Lcom/baseflow/geolocator/data/ForwardGeocodingOptions;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/baseflow/geolocator/data/ForwardGeocodingOptions;->parseArguments(Ljava/lang/Object;)Lcom/baseflow/geolocator/data/ForwardGeocodingOptions;

    move-result-object p2

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/baseflow/geolocator/tasks/TaskContext;->buildForMethodResult(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)Lcom/baseflow/geolocator/tasks/TaskContext;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask;

    invoke-direct {p1, p0}, Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask;-><init>(Lcom/baseflow/geolocator/tasks/TaskContext;)V

    return-object p1
.end method

.method public static createLastKnownLocationTask(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)Lcom/baseflow/geolocator/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "registrar",
            "result",
            "arguments",
            "completionListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugin/common/PluginRegistry$Registrar;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            "Ljava/lang/Object;",
            "Lcom/baseflow/geolocator/OnCompletionListener;",
            ")",
            "Lcom/baseflow/geolocator/tasks/Task<",
            "Lcom/baseflow/geolocator/data/LocationOptions;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/baseflow/geolocator/data/LocationOptions;->parseArguments(Ljava/lang/Object;)Lcom/baseflow/geolocator/data/LocationOptions;

    move-result-object p2

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/baseflow/geolocator/tasks/TaskContext;->buildForMethodResult(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)Lcom/baseflow/geolocator/tasks/TaskContext;

    move-result-object p0

    .line 3
    invoke-virtual {p2}, Lcom/baseflow/geolocator/data/LocationOptions;->isForceAndroidLocationManager()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask;

    invoke-direct {p1, p0}, Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask;-><init>(Lcom/baseflow/geolocator/tasks/TaskContext;)V

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationManagerTask;

    invoke-direct {p1, p0}, Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationManagerTask;-><init>(Lcom/baseflow/geolocator/tasks/TaskContext;)V

    return-object p1
.end method

.method public static createReverseGeocodingTask(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)Lcom/baseflow/geolocator/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "registrar",
            "result",
            "arguments",
            "completionListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugin/common/PluginRegistry$Registrar;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            "Ljava/lang/Object;",
            "Lcom/baseflow/geolocator/OnCompletionListener;",
            ")",
            "Lcom/baseflow/geolocator/tasks/Task<",
            "Lcom/baseflow/geolocator/data/ReverseGeocodingOptions;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/baseflow/geolocator/data/ReverseGeocodingOptions;->parseArguments(Ljava/lang/Object;)Lcom/baseflow/geolocator/data/ReverseGeocodingOptions;

    move-result-object p2

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/baseflow/geolocator/tasks/TaskContext;->buildForMethodResult(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)Lcom/baseflow/geolocator/tasks/TaskContext;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/baseflow/geolocator/tasks/ReverseGeocodingTask;

    invoke-direct {p1, p0}, Lcom/baseflow/geolocator/tasks/ReverseGeocodingTask;-><init>(Lcom/baseflow/geolocator/tasks/TaskContext;)V

    return-object p1
.end method

.method public static createStreamLocationUpdatesTask(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/plugin/common/EventChannel$EventSink;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)Lcom/baseflow/geolocator/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "registrar",
            "result",
            "arguments",
            "completionListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugin/common/PluginRegistry$Registrar;",
            "Lio/flutter/plugin/common/EventChannel$EventSink;",
            "Ljava/lang/Object;",
            "Lcom/baseflow/geolocator/OnCompletionListener;",
            ")",
            "Lcom/baseflow/geolocator/tasks/Task<",
            "Lcom/baseflow/geolocator/data/LocationOptions;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/baseflow/geolocator/data/LocationOptions;->parseArguments(Ljava/lang/Object;)Lcom/baseflow/geolocator/data/LocationOptions;

    move-result-object p2

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/baseflow/geolocator/tasks/TaskContext;->buildForEventSink(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/plugin/common/EventChannel$EventSink;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)Lcom/baseflow/geolocator/tasks/TaskContext;

    move-result-object p0

    .line 3
    invoke-virtual {p2}, Lcom/baseflow/geolocator/data/LocationOptions;->isForceAndroidLocationManager()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;

    invoke-direct {p1, p0, p2}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationServicesTask;-><init>(Lcom/baseflow/geolocator/tasks/TaskContext;Z)V

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;

    invoke-direct {p1, p0, p2}, Lcom/baseflow/geolocator/tasks/LocationUpdatesUsingLocationManagerTask;-><init>(Lcom/baseflow/geolocator/tasks/TaskContext;Z)V

    return-object p1
.end method
