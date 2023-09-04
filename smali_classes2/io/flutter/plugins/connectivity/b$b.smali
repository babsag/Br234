.class Lio/flutter/plugins/connectivity/b$b;
.super Ljava/lang/Object;
.source "ConnectivityBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/connectivity/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugins/connectivity/b;


# direct methods
.method constructor <init>(Lio/flutter/plugins/connectivity/b;)V
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
    iput-object p1, p0, Lio/flutter/plugins/connectivity/b$b;->a:Lio/flutter/plugins/connectivity/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/connectivity/b$b;->a:Lio/flutter/plugins/connectivity/b;

    invoke-static {v0}, Lio/flutter/plugins/connectivity/b;->c(Lio/flutter/plugins/connectivity/b;)Lio/flutter/plugin/common/EventChannel$EventSink;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugins/connectivity/b$b;->a:Lio/flutter/plugins/connectivity/b;

    invoke-static {v1}, Lio/flutter/plugins/connectivity/b;->b(Lio/flutter/plugins/connectivity/b;)Lio/flutter/plugins/connectivity/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/plugins/connectivity/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    return-void
.end method
