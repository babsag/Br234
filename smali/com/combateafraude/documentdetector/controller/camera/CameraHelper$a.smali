.class Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$a;
.super Ljava/lang/Object;
.source "CameraHelper.java"

# interfaces
.implements Landroidx/camera/core/ImageCapture$OnImageSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->savePicture(Ljava/lang/String;Ljava/io/File;ZLcom/combateafraude/documentdetector/controller/camera/CameraHelper$OnPhotoCaptured;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$OnPhotoCaptured;

.field final synthetic c:J

.field final synthetic d:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;


# direct methods
.method constructor <init>(Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;Ljava/lang/String;Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$OnPhotoCaptured;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$a;->d:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;

    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$a;->b:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$OnPhotoCaptured;

    iput-wide p4, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$a;->c:J

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
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$a;->b:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$OnPhotoCaptured;

    invoke-interface {v0, p1}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$OnPhotoCaptured;->onFailure(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method public onImageSaved(Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .locals 4
    .param p1    # Landroidx/camera/core/ImageCapture$OutputFileResults;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$a;->d:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->addExifMetadataInFile(Ljava/io/File;)V

    .line 2
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$a;->b:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$OnPhotoCaptured;

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$a;->a:Ljava/lang/String;

    iget-wide v1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$a;->c:J

    iget-object v3, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$a;->d:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;

    invoke-static {v3}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->a(Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;)I

    move-result v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$OnPhotoCaptured;->onSuccess(Ljava/lang/String;JI)V

    return-void
.end method
