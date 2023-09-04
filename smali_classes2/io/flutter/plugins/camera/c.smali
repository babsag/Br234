.class public final synthetic Lio/flutter/plugins/camera/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic a:Lio/flutter/plugin/common/EventChannel$EventSink;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/camera/c;->a:Lio/flutter/plugin/common/EventChannel$EventSink;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugins/camera/c;->a:Lio/flutter/plugin/common/EventChannel$EventSink;

    invoke-static {v0, p1}, Lio/flutter/plugins/camera/Camera;->r(Lio/flutter/plugin/common/EventChannel$EventSink;Landroid/media/ImageReader;)V

    return-void
.end method
