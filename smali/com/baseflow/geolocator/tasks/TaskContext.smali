.class final Lcom/baseflow/geolocator/tasks/TaskContext;
.super Ljava/lang/Object;
.source "TaskContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TOptions:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mChannelResponse:Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

.field private final mCompletionListener:Lcom/baseflow/geolocator/OnCompletionListener;

.field private final mOptions:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTOptions;"
        }
    .end annotation
.end field

.field private final mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;


# direct methods
.method private constructor <init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)V
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
            "channelResponse",
            "options",
            "completionListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugin/common/PluginRegistry$Registrar;",
            "Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;",
            "TTOptions;",
            "Lcom/baseflow/geolocator/OnCompletionListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baseflow/geolocator/tasks/TaskContext;->mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    .line 3
    iput-object p2, p0, Lcom/baseflow/geolocator/tasks/TaskContext;->mChannelResponse:Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    .line 4
    iput-object p3, p0, Lcom/baseflow/geolocator/tasks/TaskContext;->mOptions:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lcom/baseflow/geolocator/tasks/TaskContext;->mCompletionListener:Lcom/baseflow/geolocator/OnCompletionListener;

    return-void
.end method

.method static buildForEventSink(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/plugin/common/EventChannel$EventSink;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)Lcom/baseflow/geolocator/tasks/TaskContext;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "registrar",
            "eventSink",
            "options",
            "completionListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOptions:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/flutter/plugin/common/PluginRegistry$Registrar;",
            "Lio/flutter/plugin/common/EventChannel$EventSink;",
            "TTOptions;",
            "Lcom/baseflow/geolocator/OnCompletionListener;",
            ")",
            "Lcom/baseflow/geolocator/tasks/TaskContext<",
            "TTOptions;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;->wrap(Ljava/lang/Object;)Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/baseflow/geolocator/tasks/TaskContext;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baseflow/geolocator/tasks/TaskContext;-><init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)V

    return-object v0
.end method

.method static buildForMethodResult(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)Lcom/baseflow/geolocator/tasks/TaskContext;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "registrar",
            "methodResult",
            "options",
            "completionListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOptions:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/flutter/plugin/common/PluginRegistry$Registrar;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            "TTOptions;",
            "Lcom/baseflow/geolocator/OnCompletionListener;",
            ")",
            "Lcom/baseflow/geolocator/tasks/TaskContext<",
            "TTOptions;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;->wrap(Ljava/lang/Object;)Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/baseflow/geolocator/tasks/TaskContext;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baseflow/geolocator/tasks/TaskContext;-><init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;Ljava/lang/Object;Lcom/baseflow/geolocator/OnCompletionListener;)V

    return-object v0
.end method


# virtual methods
.method getAndroidContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/tasks/TaskContext;->mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-interface {v0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getCompletionListener()Lcom/baseflow/geolocator/OnCompletionListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/tasks/TaskContext;->mCompletionListener:Lcom/baseflow/geolocator/OnCompletionListener;

    return-object v0
.end method

.method getOptions()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTOptions;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/tasks/TaskContext;->mOptions:Ljava/lang/Object;

    return-object v0
.end method

.method getRegistrar()Lio/flutter/plugin/common/PluginRegistry$Registrar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/tasks/TaskContext;->mRegistrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-object v0
.end method

.method getResult()Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/tasks/TaskContext;->mChannelResponse:Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    return-object v0
.end method
