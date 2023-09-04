.class public abstract Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;
.super Ljava/lang/Object;
.source "ChannelResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Ljava/lang/Object;)Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "responder"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/flutter/plugin/common/EventChannel$EventSink;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/baseflow/geolocator/data/wrapper/EventResponse;

    check-cast p0, Lio/flutter/plugin/common/EventChannel$EventSink;

    invoke-direct {v0, p0}, Lcom/baseflow/geolocator/data/wrapper/EventResponse;-><init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    return-object v0

    .line 3
    :cond_0
    instance-of v0, p0, Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/baseflow/geolocator/data/wrapper/MethodResponse;

    check-cast p0, Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {v0, p0}, Lcom/baseflow/geolocator/data/wrapper/MethodResponse;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-object v0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public abstract error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
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
.end method

.method public abstract success(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation
.end method
