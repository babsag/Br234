.class public interface abstract Lio/flutter/plugin/platform/PlatformView;
.super Ljava/lang/Object;
.source "PlatformView.java"


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract onFlutterViewAttached(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end method

.method public abstract onFlutterViewDetached()V
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end method

.method public abstract onInputConnectionLocked()V
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end method

.method public abstract onInputConnectionUnlocked()V
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end method
