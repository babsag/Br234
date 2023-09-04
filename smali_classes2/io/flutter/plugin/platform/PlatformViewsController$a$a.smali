.class Lio/flutter/plugin/platform/PlatformViewsController$a$a;
.super Ljava/lang/Object;
.source "PlatformViewsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/platform/PlatformViewsController$a;->resizePlatformView(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/platform/f;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lio/flutter/plugin/platform/PlatformViewsController$a;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/PlatformViewsController$a;Lio/flutter/plugin/platform/f;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformViewsController$a$a;->c:Lio/flutter/plugin/platform/PlatformViewsController$a;

    iput-object p2, p0, Lio/flutter/plugin/platform/PlatformViewsController$a$a;->a:Lio/flutter/plugin/platform/f;

    iput-object p3, p0, Lio/flutter/plugin/platform/PlatformViewsController$a$a;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$a$a;->c:Lio/flutter/plugin/platform/PlatformViewsController$a;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController$a;->a:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$a$a;->a:Lio/flutter/plugin/platform/f;

    invoke-static {v0, v1}, Lio/flutter/plugin/platform/PlatformViewsController;->f(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/plugin/platform/f;)V

    .line 2
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$a$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
