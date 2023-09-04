.class final Lio/flutter/plugin/common/EventChannel$b$a;
.super Ljava/lang/Object;
.source "EventChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$EventSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/common/EventChannel$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lio/flutter/plugin/common/EventChannel$b;


# direct methods
.method private constructor <init>(Lio/flutter/plugin/common/EventChannel$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/flutter/plugin/common/EventChannel$b$a;->b:Lio/flutter/plugin/common/EventChannel$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/flutter/plugin/common/EventChannel$b$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lio/flutter/plugin/common/EventChannel$b;Lio/flutter/plugin/common/EventChannel$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lio/flutter/plugin/common/EventChannel$b$a;-><init>(Lio/flutter/plugin/common/EventChannel$b;)V

    return-void
.end method


# virtual methods
.method public endOfStream()V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$b$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$b$a;->b:Lio/flutter/plugin/common/EventChannel$b;

    invoke-static {v0}, Lio/flutter/plugin/common/EventChannel$b;->a(Lio/flutter/plugin/common/EventChannel$b;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$b$a;->b:Lio/flutter/plugin/common/EventChannel$b;

    iget-object v0, v0, Lio/flutter/plugin/common/EventChannel$b;->c:Lio/flutter/plugin/common/EventChannel;

    invoke-static {v0}, Lio/flutter/plugin/common/EventChannel;->c(Lio/flutter/plugin/common/EventChannel;)Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugin/common/EventChannel$b$a;->b:Lio/flutter/plugin/common/EventChannel$b;

    iget-object v1, v1, Lio/flutter/plugin/common/EventChannel$b;->c:Lio/flutter/plugin/common/EventChannel;

    invoke-static {v1}, Lio/flutter/plugin/common/EventChannel;->b(Lio/flutter/plugin/common/EventChannel;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lio/flutter/plugin/common/BinaryMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$b$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$b$a;->b:Lio/flutter/plugin/common/EventChannel$b;

    invoke-static {v0}, Lio/flutter/plugin/common/EventChannel$b;->a(Lio/flutter/plugin/common/EventChannel$b;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$b$a;->b:Lio/flutter/plugin/common/EventChannel$b;

    iget-object v0, v0, Lio/flutter/plugin/common/EventChannel$b;->c:Lio/flutter/plugin/common/EventChannel;

    invoke-static {v0}, Lio/flutter/plugin/common/EventChannel;->c(Lio/flutter/plugin/common/EventChannel;)Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugin/common/EventChannel$b$a;->b:Lio/flutter/plugin/common/EventChannel$b;

    iget-object v1, v1, Lio/flutter/plugin/common/EventChannel$b;->c:Lio/flutter/plugin/common/EventChannel;

    .line 3
    invoke-static {v1}, Lio/flutter/plugin/common/EventChannel;->b(Lio/flutter/plugin/common/EventChannel;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/plugin/common/EventChannel$b$a;->b:Lio/flutter/plugin/common/EventChannel$b;

    iget-object v2, v2, Lio/flutter/plugin/common/EventChannel$b;->c:Lio/flutter/plugin/common/EventChannel;

    invoke-static {v2}, Lio/flutter/plugin/common/EventChannel;->a(Lio/flutter/plugin/common/EventChannel;)Lio/flutter/plugin/common/MethodCodec;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lio/flutter/plugin/common/MethodCodec;->encodeErrorEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 4
    invoke-interface {v0, v1, p1}, Lio/flutter/plugin/common/BinaryMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$b$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$b$a;->b:Lio/flutter/plugin/common/EventChannel$b;

    invoke-static {v0}, Lio/flutter/plugin/common/EventChannel$b;->a(Lio/flutter/plugin/common/EventChannel$b;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$b$a;->b:Lio/flutter/plugin/common/EventChannel$b;

    iget-object v0, v0, Lio/flutter/plugin/common/EventChannel$b;->c:Lio/flutter/plugin/common/EventChannel;

    invoke-static {v0}, Lio/flutter/plugin/common/EventChannel;->c(Lio/flutter/plugin/common/EventChannel;)Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugin/common/EventChannel$b$a;->b:Lio/flutter/plugin/common/EventChannel$b;

    iget-object v1, v1, Lio/flutter/plugin/common/EventChannel$b;->c:Lio/flutter/plugin/common/EventChannel;

    invoke-static {v1}, Lio/flutter/plugin/common/EventChannel;->b(Lio/flutter/plugin/common/EventChannel;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/plugin/common/EventChannel$b$a;->b:Lio/flutter/plugin/common/EventChannel$b;

    iget-object v2, v2, Lio/flutter/plugin/common/EventChannel$b;->c:Lio/flutter/plugin/common/EventChannel;

    invoke-static {v2}, Lio/flutter/plugin/common/EventChannel;->a(Lio/flutter/plugin/common/EventChannel;)Lio/flutter/plugin/common/MethodCodec;

    move-result-object v2

    invoke-interface {v2, p1}, Lio/flutter/plugin/common/MethodCodec;->encodeSuccessEnvelope(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lio/flutter/plugin/common/BinaryMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_1
    :goto_0
    return-void
.end method
