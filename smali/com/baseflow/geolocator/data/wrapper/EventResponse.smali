.class public Lcom/baseflow/geolocator/data/wrapper/EventResponse;
.super Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;
.source "EventResponse.java"


# instance fields
.field private final mSink:Lio/flutter/plugin/common/EventChannel$EventSink;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sink"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baseflow/geolocator/data/wrapper/EventResponse;->mSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "message",
            "details"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/data/wrapper/EventResponse;->mSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    invoke-interface {v0, p1, p2, p3}, Lio/flutter/plugin/common/EventChannel$EventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/data/wrapper/EventResponse;->mSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    return-void
.end method
