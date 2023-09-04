.class Lio/flutter/plugin/common/MethodChannel$a$a;
.super Ljava/lang/Object;
.source "MethodChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/common/MethodChannel$a;->onMessage(Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;

.field final synthetic b:Lio/flutter/plugin/common/MethodChannel$a;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/MethodChannel$a;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugin/common/MethodChannel$a$a;->b:Lio/flutter/plugin/common/MethodChannel$a;

    iput-object p2, p0, Lio/flutter/plugin/common/MethodChannel$a$a;->a:Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/common/MethodChannel$a$a;->a:Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;

    iget-object v1, p0, Lio/flutter/plugin/common/MethodChannel$a$a;->b:Lio/flutter/plugin/common/MethodChannel$a;

    iget-object v1, v1, Lio/flutter/plugin/common/MethodChannel$a;->b:Lio/flutter/plugin/common/MethodChannel;

    invoke-static {v1}, Lio/flutter/plugin/common/MethodChannel;->a(Lio/flutter/plugin/common/MethodChannel;)Lio/flutter/plugin/common/MethodCodec;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lio/flutter/plugin/common/MethodCodec;->encodeErrorEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;->reply(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public notImplemented()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/common/MethodChannel$a$a;->a:Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;->reply(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/common/MethodChannel$a$a;->a:Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;

    iget-object v1, p0, Lio/flutter/plugin/common/MethodChannel$a$a;->b:Lio/flutter/plugin/common/MethodChannel$a;

    iget-object v1, v1, Lio/flutter/plugin/common/MethodChannel$a;->b:Lio/flutter/plugin/common/MethodChannel;

    invoke-static {v1}, Lio/flutter/plugin/common/MethodChannel;->a(Lio/flutter/plugin/common/MethodChannel;)Lio/flutter/plugin/common/MethodCodec;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/flutter/plugin/common/MethodCodec;->encodeSuccessEnvelope(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;->reply(Ljava/nio/ByteBuffer;)V

    return-void
.end method
