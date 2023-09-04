.class Lcaf/io/h$a;
.super Ljava/lang/Object;
.source "CameraHelper.java"

# interfaces
.implements Landroidx/camera/core/ImageCapture$OnImageSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcaf/io/h;->a(Ljava/lang/String;Lcaf/io/h$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcaf/io/h$e;

.field final synthetic c:Lcaf/io/h;


# direct methods
.method constructor <init>(Lcaf/io/h;Ljava/lang/String;Lcaf/io/h$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcaf/io/h$a;->c:Lcaf/io/h;

    iput-object p2, p0, Lcaf/io/h$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcaf/io/h$a;->b:Lcaf/io/h$e;

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
    iget-object v0, p0, Lcaf/io/h$a;->b:Lcaf/io/h$e;

    invoke-interface {v0, p1}, Lcaf/io/h$e;->a(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method public onImageSaved(Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .locals 3
    .param p1    # Landroidx/camera/core/ImageCapture$OutputFileResults;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcaf/io/h$a;->c:Lcaf/io/h;

    iget-object v0, p0, Lcaf/io/h$a;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcaf/io/h;->c(Lcaf/io/h;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcaf/io/h$a;->b:Lcaf/io/h$e;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcaf/io/h$e;->a(Landroidx/camera/core/ImageCaptureException;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcaf/io/h$a;->b:Lcaf/io/h$e;

    new-instance v1, Lcaf/io/k;

    iget-object v2, p0, Lcaf/io/h$a;->c:Lcaf/io/h;

    invoke-static {v2}, Lcaf/io/h;->a(Lcaf/io/h;)I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcaf/io/k;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcaf/io/h$e;->a(Lcaf/io/k;)V

    return-void
.end method
