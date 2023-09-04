.class Lio/flutter/plugins/camera/i;
.super Ljava/lang/Object;
.source "DartMessenger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/camera/i$b;
    }
.end annotation


# instance fields
.field private a:Lio/flutter/plugin/common/EventChannel$EventSink;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messenger",
            "eventChannelId"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/flutter/plugin/common/EventChannel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flutter.io/cameraPlugin/cameraEvents"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    new-instance p1, Lio/flutter/plugins/camera/i$a;

    invoke-direct {p1, p0}, Lio/flutter/plugins/camera/i$a;-><init>(Lio/flutter/plugins/camera/i;)V

    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugins/camera/i;Lio/flutter/plugin/common/EventChannel$EventSink;)Lio/flutter/plugin/common/EventChannel$EventSink;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/camera/i;->a:Lio/flutter/plugin/common/EventChannel$EventSink;

    return-object p1
.end method


# virtual methods
.method b(Lio/flutter/plugins/camera/i$b;Ljava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventType",
            "description"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/camera/i;->a:Lio/flutter/plugin/common/EventChannel$EventSink;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lio/flutter/plugins/camera/i$b;->ERROR:Lio/flutter/plugins/camera/i$b;

    if-ne p1, v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "errorDescription"

    .line 5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object p1, p0, Lio/flutter/plugins/camera/i;->a:Lio/flutter/plugin/common/EventChannel$EventSink;

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    return-void
.end method

.method c()V
    .locals 2

    .line 1
    sget-object v0, Lio/flutter/plugins/camera/i$b;->CAMERA_CLOSING:Lio/flutter/plugins/camera/i$b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/flutter/plugins/camera/i;->b(Lio/flutter/plugins/camera/i$b;Ljava/lang/String;)V

    return-void
.end method
