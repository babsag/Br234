.class public interface abstract Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.super Ljava/lang/Object;
.source "FlutterPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;,
        Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
    }
.end annotation


# virtual methods
.method public abstract onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
