.class Landroidx/camera/core/ImageCapture$d;
.super Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;
.source "ImageCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/ImageCapture;->takePicture(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/camera/core/ImageCapture$OutputFileOptions;

.field final synthetic b:I

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:Landroidx/camera/core/ImageSaver$OnImageSavedCallback;

.field final synthetic e:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

.field final synthetic f:Landroidx/camera/core/ImageCapture;


# direct methods
.method constructor <init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OutputFileOptions;ILjava/util/concurrent/Executor;Landroidx/camera/core/ImageSaver$OnImageSavedCallback;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/core/ImageCapture$d;->f:Landroidx/camera/core/ImageCapture;

    iput-object p2, p0, Landroidx/camera/core/ImageCapture$d;->a:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    iput p3, p0, Landroidx/camera/core/ImageCapture$d;->b:I

    iput-object p4, p0, Landroidx/camera/core/ImageCapture$d;->c:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Landroidx/camera/core/ImageCapture$d;->d:Landroidx/camera/core/ImageSaver$OnImageSavedCallback;

    iput-object p6, p0, Landroidx/camera/core/ImageCapture$d;->e:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    invoke-direct {p0}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureSuccess(Landroidx/camera/core/ImageProxy;)V
    .locals 10
    .param p1    # Landroidx/camera/core/ImageProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$d;->f:Landroidx/camera/core/ImageCapture;

    iget-object v0, v0, Landroidx/camera/core/ImageCapture;->p:Ljava/util/concurrent/Executor;

    new-instance v9, Landroidx/camera/core/ImageSaver;

    iget-object v3, p0, Landroidx/camera/core/ImageCapture$d;->a:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    .line 2
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/ImageInfo;->getRotationDegrees()I

    move-result v4

    iget v5, p0, Landroidx/camera/core/ImageCapture$d;->b:I

    iget-object v6, p0, Landroidx/camera/core/ImageCapture$d;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/camera/core/ImageCapture$d;->f:Landroidx/camera/core/ImageCapture;

    iget-object v7, v1, Landroidx/camera/core/ImageCapture;->I:Ljava/util/concurrent/Executor;

    iget-object v8, p0, Landroidx/camera/core/ImageCapture$d;->d:Landroidx/camera/core/ImageSaver$OnImageSavedCallback;

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroidx/camera/core/ImageSaver;-><init>(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageCapture$OutputFileOptions;IILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageSaver$OnImageSavedCallback;)V

    .line 3
    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Landroidx/camera/core/ImageCaptureException;)V
    .locals 1
    .param p1    # Landroidx/camera/core/ImageCaptureException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$d;->e:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    invoke-interface {v0, p1}, Landroidx/camera/core/ImageCapture$OnImageSavedCallback;->onError(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method
