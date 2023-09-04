.class public interface abstract Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
.super Ljava/lang/Object;
.source "ActivityPluginBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding$OnSaveInstanceStateListener;
    }
.end annotation


# virtual methods
.method public abstract addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V
    .param p1    # Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract addOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V
    .param p1    # Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract addOnSaveStateListener(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding$OnSaveInstanceStateListener;)V
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding$OnSaveInstanceStateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract addOnUserLeaveHintListener(Lio/flutter/plugin/common/PluginRegistry$UserLeaveHintListener;)V
    .param p1    # Lio/flutter/plugin/common/PluginRegistry$UserLeaveHintListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V
    .param p1    # Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getActivity()Landroid/app/Activity;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getLifecycle()Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V
    .param p1    # Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract removeOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V
    .param p1    # Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract removeOnSaveStateListener(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding$OnSaveInstanceStateListener;)V
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding$OnSaveInstanceStateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract removeOnUserLeaveHintListener(Lio/flutter/plugin/common/PluginRegistry$UserLeaveHintListener;)V
    .param p1    # Lio/flutter/plugin/common/PluginRegistry$UserLeaveHintListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract removeRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V
    .param p1    # Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
