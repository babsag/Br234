.class public Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;
.super Ljava/lang/Object;
.source "KeyEventChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;,
        Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;
    }
.end annotation


# instance fields
.field private a:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;

.field public final channel:Lio/flutter/plugin/common/BasicMessageChannel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/flutter/plugin/common/BasicMessageChannel<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 3
    .param p1    # Lio/flutter/plugin/common/BinaryMessenger;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    sget-object v1, Lio/flutter/plugin/common/JSONMessageCodec;->INSTANCE:Lio/flutter/plugin/common/JSONMessageCodec;

    const-string v2, "flutter/keyevent"

    invoke-direct {v0, p1, v2, v1}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->channel:Lio/flutter/plugin/common/BasicMessageChannel;

    return-void
.end method

.method private b(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;Ljava/util/Map;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "flags"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->plainCodePoint:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "plainCodePoint"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->codePoint:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "codePoint"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->keyCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "keyCode"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->scanCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scanCode"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->metaState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "metaState"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->complexCharacter:Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "character"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->source:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "source"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->vendorId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "vendorId"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->productId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "productId"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->deviceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget p1, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->repeatCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "repeatCount"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic c(JLjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->a:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 2
    :try_start_0
    invoke-interface {v0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;->onKeyEventNotHandled(J)V

    return-void

    .line 3
    :cond_1
    check-cast p3, Lorg/json/JSONObject;

    const-string v0, "handled"

    .line 4
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 5
    iget-object p3, p0, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->a:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;

    invoke-interface {p3, p1, p2}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;->onKeyEventHandled(J)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p3, p0, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->a:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;

    invoke-interface {p3, p1, p2}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;->onKeyEventNotHandled(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to unpack JSON message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "KeyEventChannel"

    invoke-static {v0, p3}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p3, p0, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->a:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;

    invoke-interface {p3, p1, p2}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;->onKeyEventNotHandled(J)V

    :goto_0
    return-void
.end method


# virtual methods
.method a(J)Lio/flutter/plugin/common/BasicMessageChannel$Reply;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/flutter/plugin/common/BasicMessageChannel$Reply<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/a;

    invoke-direct {v0, p0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/a;-><init>(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;J)V

    return-object v0
.end method

.method public synthetic d(JLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->c(JLjava/lang/Object;)V

    return-void
.end method

.method public keyDown(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;)V
    .locals 4
    .param p1    # Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "keydown"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "keymap"

    const-string v2, "android"

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->b(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;Ljava/util/Map;)V

    .line 5
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->channel:Lio/flutter/plugin/common/BasicMessageChannel;

    iget-wide v2, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->eventId:J

    invoke-virtual {p0, v2, v3}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->a(J)Lio/flutter/plugin/common/BasicMessageChannel$Reply;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    return-void
.end method

.method public keyUp(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;)V
    .locals 4
    .param p1    # Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "keyup"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "keymap"

    const-string v2, "android"

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->b(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;Ljava/util/Map;)V

    .line 5
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->channel:Lio/flutter/plugin/common/BasicMessageChannel;

    iget-wide v2, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->eventId:J

    invoke-virtual {p0, v2, v3}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->a(J)Lio/flutter/plugin/common/BasicMessageChannel$Reply;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    return-void
.end method

.method public setEventResponseHandler(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->a:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;

    return-void
.end method
