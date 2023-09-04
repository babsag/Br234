.class Lio/flutter/plugins/camera/Camera$e;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/camera/Camera;->startPreviewWithImageStream(Lio/flutter/plugin/common/EventChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugins/camera/Camera;


# direct methods
.method constructor <init>(Lio/flutter/plugins/camera/Camera;)V
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
    iput-object p1, p0, Lio/flutter/plugins/camera/Camera$e;->a:Lio/flutter/plugins/camera/Camera;

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
            "o"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/camera/Camera$e;->a:Lio/flutter/plugins/camera/Camera;

    invoke-static {p1}, Lio/flutter/plugins/camera/Camera;->k(Lio/flutter/plugins/camera/Camera;)Landroid/media/ImageReader;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

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
            "o",
            "imageStreamSink"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/camera/Camera$e;->a:Lio/flutter/plugins/camera/Camera;

    invoke-static {p1, p2}, Lio/flutter/plugins/camera/Camera;->j(Lio/flutter/plugins/camera/Camera;Lio/flutter/plugin/common/EventChannel$EventSink;)V

    return-void
.end method
