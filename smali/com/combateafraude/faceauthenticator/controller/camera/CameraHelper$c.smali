.class Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$c;
.super Ljava/lang/Object;
.source "CameraHelper.java"

# interfaces
.implements Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->saveVideo(Ljava/lang/String;Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnVideoCaptured;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnVideoCaptured;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;


# direct methods
.method constructor <init>(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnVideoCaptured;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$c;->c:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;

    iput-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$c;->a:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnVideoCaptured;

    iput-object p3, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$c;->a:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnVideoCaptured;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnVideoCaptured;->onFailure(Landroidx/camera/core/VideoCapture$VideoCaptureError;)V

    return-void
.end method

.method public onVideoSaved(Landroidx/camera/core/VideoCapture$OutputFileResults;)V
    .locals 2
    .param p1    # Landroidx/camera/core/VideoCapture$OutputFileResults;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$c;->a:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnVideoCaptured;

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$c;->c:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;

    invoke-static {v1}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->a(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnVideoCaptured;->onSuccess(Ljava/lang/String;I)V

    return-void
.end method
