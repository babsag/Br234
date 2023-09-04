.class Lio/flutter/embedding/engine/dart/DartExecutor$a;
.super Ljava/lang/Object;
.source "DartExecutor.java"

# interfaces
.implements Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/dart/DartExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/engine/dart/DartExecutor;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/engine/dart/DartExecutor$a;->a:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lio/flutter/embedding/engine/dart/DartExecutor$a;->a:Lio/flutter/embedding/engine/dart/DartExecutor;

    sget-object v0, Lio/flutter/plugin/common/StringCodec;->INSTANCE:Lio/flutter/plugin/common/StringCodec;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/StringCodec;->decodeMessage(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lio/flutter/embedding/engine/dart/DartExecutor;->b(Lio/flutter/embedding/engine/dart/DartExecutor;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lio/flutter/embedding/engine/dart/DartExecutor$a;->a:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-static {p1}, Lio/flutter/embedding/engine/dart/DartExecutor;->c(Lio/flutter/embedding/engine/dart/DartExecutor;)Lio/flutter/embedding/engine/dart/DartExecutor$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/flutter/embedding/engine/dart/DartExecutor$a;->a:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-static {p1}, Lio/flutter/embedding/engine/dart/DartExecutor;->c(Lio/flutter/embedding/engine/dart/DartExecutor;)Lio/flutter/embedding/engine/dart/DartExecutor$c;

    move-result-object p1

    iget-object p2, p0, Lio/flutter/embedding/engine/dart/DartExecutor$a;->a:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-static {p2}, Lio/flutter/embedding/engine/dart/DartExecutor;->a(Lio/flutter/embedding/engine/dart/DartExecutor;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/flutter/embedding/engine/dart/DartExecutor$c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
