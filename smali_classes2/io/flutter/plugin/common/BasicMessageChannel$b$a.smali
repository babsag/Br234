.class Lio/flutter/plugin/common/BasicMessageChannel$b$a;
.super Ljava/lang/Object;
.source "BasicMessageChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/BasicMessageChannel$Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/common/BasicMessageChannel$b;->onMessage(Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/flutter/plugin/common/BasicMessageChannel$Reply<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;

.field final synthetic b:Lio/flutter/plugin/common/BasicMessageChannel$b;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/BasicMessageChannel$b;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugin/common/BasicMessageChannel$b$a;->b:Lio/flutter/plugin/common/BasicMessageChannel$b;

    iput-object p2, p0, Lio/flutter/plugin/common/BasicMessageChannel$b$a;->a:Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reply(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/common/BasicMessageChannel$b$a;->a:Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;

    iget-object v1, p0, Lio/flutter/plugin/common/BasicMessageChannel$b$a;->b:Lio/flutter/plugin/common/BasicMessageChannel$b;

    iget-object v1, v1, Lio/flutter/plugin/common/BasicMessageChannel$b;->b:Lio/flutter/plugin/common/BasicMessageChannel;

    invoke-static {v1}, Lio/flutter/plugin/common/BasicMessageChannel;->a(Lio/flutter/plugin/common/BasicMessageChannel;)Lio/flutter/plugin/common/MessageCodec;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/flutter/plugin/common/MessageCodec;->encodeMessage(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;->reply(Ljava/nio/ByteBuffer;)V

    return-void
.end method
