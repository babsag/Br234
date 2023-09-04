.class Lio/flutter/plugins/camera/i$a;
.super Ljava/lang/Object;
.source "DartMessenger.java"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/camera/i;-><init>(Lio/flutter/plugin/common/BinaryMessenger;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugins/camera/i;


# direct methods
.method constructor <init>(Lio/flutter/plugins/camera/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/camera/i$a;->a:Lio/flutter/plugins/camera/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arguments"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/camera/i$a;->a:Lio/flutter/plugins/camera/i;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/flutter/plugins/camera/i;->a(Lio/flutter/plugins/camera/i;Lio/flutter/plugin/common/EventChannel$EventSink;)Lio/flutter/plugin/common/EventChannel$EventSink;

    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arguments",
            "sink"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/camera/i$a;->a:Lio/flutter/plugins/camera/i;

    invoke-static {p1, p2}, Lio/flutter/plugins/camera/i;->a(Lio/flutter/plugins/camera/i;Lio/flutter/plugin/common/EventChannel$EventSink;)Lio/flutter/plugin/common/EventChannel$EventSink;

    return-void
.end method
