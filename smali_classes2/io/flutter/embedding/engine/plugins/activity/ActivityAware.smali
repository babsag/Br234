.class public interface abstract Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.super Ljava/lang/Object;
.source "ActivityAware.java"


# virtual methods
.method public abstract onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onDetachedFromActivity()V
.end method

.method public abstract onDetachedFromActivityForConfigChanges()V
.end method

.method public abstract onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
