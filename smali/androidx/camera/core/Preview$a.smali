.class Landroidx/camera/core/Preview$a;
.super Landroidx/camera/core/impl/CameraCaptureCallback;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/Preview;->e(Ljava/lang/String;Landroidx/camera/core/impl/PreviewConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/camera/core/impl/ImageInfoProcessor;

.field final synthetic b:Landroidx/camera/core/Preview;


# direct methods
.method constructor <init>(Landroidx/camera/core/Preview;Landroidx/camera/core/impl/ImageInfoProcessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/core/Preview$a;->b:Landroidx/camera/core/Preview;

    iput-object p2, p0, Landroidx/camera/core/Preview$a;->a:Landroidx/camera/core/impl/ImageInfoProcessor;

    invoke-direct {p0}, Landroidx/camera/core/impl/CameraCaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 2
    .param p1    # Landroidx/camera/core/impl/CameraCaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureCompleted(Landroidx/camera/core/impl/CameraCaptureResult;)V

    .line 2
    iget-object v0, p0, Landroidx/camera/core/Preview$a;->a:Landroidx/camera/core/impl/ImageInfoProcessor;

    new-instance v1, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;

    invoke-direct {v1, p1}, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;-><init>(Landroidx/camera/core/impl/CameraCaptureResult;)V

    invoke-interface {v0, v1}, Landroidx/camera/core/impl/ImageInfoProcessor;->process(Landroidx/camera/core/ImageInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/camera/core/Preview$a;->b:Landroidx/camera/core/Preview;

    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->notifyUpdated()V

    :cond_0
    return-void
.end method
