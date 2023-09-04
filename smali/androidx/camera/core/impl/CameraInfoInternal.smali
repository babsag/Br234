.class public interface abstract Landroidx/camera/core/impl/CameraInfoInternal;
.super Ljava/lang/Object;
.source "CameraInfoInternal.java"

# interfaces
.implements Landroidx/camera/core/CameraInfo;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# virtual methods
.method public abstract addSessionCaptureCallback(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/CameraCaptureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getCamcorderProfileProvider()Landroidx/camera/core/impl/CamcorderProfileProvider;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getCameraId()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getCameraQuirks()Landroidx/camera/core/impl/Quirks;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getCameraSelector()Landroidx/camera/core/CameraSelector;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getLensFacing()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getTimebase()Landroidx/camera/core/impl/Timebase;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract removeSessionCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .param p1    # Landroidx/camera/core/impl/CameraCaptureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
