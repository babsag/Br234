.class public interface abstract Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelperCallback;
.super Ljava/lang/Object;
.source "CameraHelperCallback.java"


# virtual methods
.method public abstract onCameraError(Ljava/lang/Exception;)V
.end method

.method public abstract onCameraInitialized()V
.end method

.method public abstract onImageAvailable(Landroidx/camera/core/ImageProxy;)V
    .param p1    # Landroidx/camera/core/ImageProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
