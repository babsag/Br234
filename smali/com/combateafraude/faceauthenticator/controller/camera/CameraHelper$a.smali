.class Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$a;
.super Ljava/lang/Object;
.source "CameraHelper.java"

# interfaces
.implements Landroidx/camera/core/ImageCapture$OnImageSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->savePicture(Ljava/lang/String;Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnPhotoCaptured;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnPhotoCaptured;

.field final synthetic c:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;


# direct methods
.method constructor <init>(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;Ljava/lang/String;Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnPhotoCaptured;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$a;->c:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;

    iput-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$a;->b:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnPhotoCaptured;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroidx/camera/core/ImageCaptureException;)V
    .locals 1
    .param p1    # Landroidx/camera/core/ImageCaptureException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$a;->b:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnPhotoCaptured;

    invoke-interface {v0, p1}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnPhotoCaptured;->onFailure(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method public onImageSaved(Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .locals 2
    .param p1    # Landroidx/camera/core/ImageCapture$OutputFileResults;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$a;->c:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->addExifMetadataInFile(Ljava/io/File;)V

    .line 2
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$a;->b:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnPhotoCaptured;

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$a;->c:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;

    invoke-static {v1}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->a(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnPhotoCaptured;->onSuccess(Ljava/lang/String;I)V

    return-void
.end method
