.class public Lcom/baseflow/geolocator/data/Result;
.super Ljava/lang/Object;
.source "Result.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mEventResult:Lio/flutter/plugin/common/EventChannel$EventSink;

.field private final mMethodResult:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventResult"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/baseflow/geolocator/data/Result;->mEventResult:Lio/flutter/plugin/common/EventChannel$EventSink;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/baseflow/geolocator/data/Result;->mMethodResult:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodResult"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/baseflow/geolocator/data/Result;->mEventResult:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 3
    iput-object p1, p0, Lcom/baseflow/geolocator/data/Result;->mMethodResult:Lio/flutter/plugin/common/MethodChannel$Result;

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
    iget-object v0, p0, Lcom/baseflow/geolocator/data/Result;->mMethodResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/baseflow/geolocator/data/Result;->mEventResult:Lio/flutter/plugin/common/EventChannel$EventSink;

    invoke-interface {v0, p1, p2, p3}, Lio/flutter/plugin/common/EventChannel$EventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/data/Result;->mMethodResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/baseflow/geolocator/data/Result;->mEventResult:Lio/flutter/plugin/common/EventChannel$EventSink;

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
