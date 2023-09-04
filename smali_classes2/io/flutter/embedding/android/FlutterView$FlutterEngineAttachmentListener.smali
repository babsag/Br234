.class public interface abstract Lio/flutter/embedding/android/FlutterView$FlutterEngineAttachmentListener;
.super Ljava/lang/Object;
.source "FlutterView.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FlutterEngineAttachmentListener"
.end annotation


# virtual methods
.method public abstract onFlutterEngineAttachedToFlutterView(Lio/flutter/embedding/engine/FlutterEngine;)V
    .param p1    # Lio/flutter/embedding/engine/FlutterEngine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onFlutterEngineDetachedFromFlutterView()V
.end method
