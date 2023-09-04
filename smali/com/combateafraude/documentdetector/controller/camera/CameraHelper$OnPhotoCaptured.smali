.class public interface abstract Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$OnPhotoCaptured;
.super Ljava/lang/Object;
.source "CameraHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPhotoCaptured"
.end annotation


# virtual methods
.method public abstract onFailure(Landroidx/camera/core/ImageCaptureException;)V
    .param p1    # Landroidx/camera/core/ImageCaptureException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onSuccess(Ljava/lang/String;JI)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
