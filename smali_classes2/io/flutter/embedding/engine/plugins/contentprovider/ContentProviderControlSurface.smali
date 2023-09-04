.class public interface abstract Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderControlSurface;
.super Ljava/lang/Object;
.source "ContentProviderControlSurface.java"


# virtual methods
.method public abstract attachToContentProvider(Landroid/content/ContentProvider;Landroidx/lifecycle/Lifecycle;)V
    .param p1    # Landroid/content/ContentProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract detachFromContentProvider()V
.end method
