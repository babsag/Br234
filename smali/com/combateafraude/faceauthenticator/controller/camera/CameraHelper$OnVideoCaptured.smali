.class public interface abstract Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnVideoCaptured;
.super Ljava/lang/Object;
.source "CameraHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnVideoCaptured"
.end annotation


# virtual methods
.method public abstract onFailure(Landroidx/camera/core/VideoCapture$VideoCaptureError;)V
    .param p1    # Landroidx/camera/core/VideoCapture$VideoCaptureError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onSuccess(Ljava/lang/String;I)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method