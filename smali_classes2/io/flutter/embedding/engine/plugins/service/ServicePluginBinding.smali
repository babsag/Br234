.class public interface abstract Lio/flutter/embedding/engine/plugins/service/ServicePluginBinding;
.super Ljava/lang/Object;
.source "ServicePluginBinding.java"


# virtual methods
.method public abstract addOnModeChangeListener(Lio/flutter/embedding/engine/plugins/service/ServiceAware$OnModeChangeListener;)V
    .param p1    # Lio/flutter/embedding/engine/plugins/service/ServiceAware$OnModeChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getLifecycle()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getService()Landroid/app/Service;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract removeOnModeChangeListener(Lio/flutter/embedding/engine/plugins/service/ServiceAware$OnModeChangeListener;)V
    .param p1    # Lio/flutter/embedding/engine/plugins/service/ServiceAware$OnModeChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
