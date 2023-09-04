.class public final synthetic Lio/flutter/embedding/engine/systemchannels/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/flutter/plugin/common/BasicMessageChannel$Reply;


# instance fields
.field public final synthetic a:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/a;->a:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;

    iput-wide p2, p0, Lio/flutter/embedding/engine/systemchannels/a;->b:J

    return-void
.end method


# virtual methods
.method public final reply(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/a;->a:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;

    iget-wide v1, p0, Lio/flutter/embedding/engine/systemchannels/a;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->d(JLjava/lang/Object;)V

    return-void
.end method
