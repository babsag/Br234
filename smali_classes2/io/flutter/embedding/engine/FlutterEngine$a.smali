.class Lio/flutter/embedding/engine/FlutterEngine$a;
.super Ljava/lang/Object;
.source "FlutterEngine.java"

# interfaces
.implements Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/FlutterEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/engine/FlutterEngine;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterEngine$a;->a:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreEngineRestart()V
    .locals 2

    const-string v0, "FlutterEngine"

    const-string v1, "onPreEngineRestart()"

    .line 1
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine$a;->a:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-static {v0}, Lio/flutter/embedding/engine/FlutterEngine;->a(Lio/flutter/embedding/engine/FlutterEngine;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

    .line 3
    invoke-interface {v1}, Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;->onPreEngineRestart()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine$a;->a:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-static {v0}, Lio/flutter/embedding/engine/FlutterEngine;->b(Lio/flutter/embedding/engine/FlutterEngine;)Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->onPreEngineRestart()V

    .line 5
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine$a;->a:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-static {v0}, Lio/flutter/embedding/engine/FlutterEngine;->c(Lio/flutter/embedding/engine/FlutterEngine;)Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->clearData()V

    return-void
.end method
