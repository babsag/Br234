.class Lcaf/io/h$d;
.super Ljava/lang/Object;
.source "CameraHelper.java"

# interfaces
.implements Landroidx/camera/core/ImageAnalysis$Analyzer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcaf/io/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcaf/io/h;


# direct methods
.method constructor <init>(Lcaf/io/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcaf/io/h$d;->a:Lcaf/io/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public analyze(Landroidx/camera/core/ImageProxy;)V
    .locals 2
    .param p1    # Landroidx/camera/core/ImageProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcaf/io/h$d;->a:Lcaf/io/h;

    invoke-static {v1, p1}, Lcaf/io/h;->b(Lcaf/io/h;Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/ImageProxy;

    .line 3
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/core/ImageInfo;->getRotationDegrees()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/mlkit/vision/common/InputImage;->fromMediaImage(Landroid/media/Image;I)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcaf/io/h$d;->a:Lcaf/io/h;

    invoke-static {v0}, Lcaf/io/h;->h(Lcaf/io/h;)Lcaf/io/i;

    move-result-object v0

    check-cast v0, Lcaf/io/L;

    invoke-virtual {v0, p1}, Lcaf/io/L;->d(Lcom/google/mlkit/vision/common/InputImage;)V

    :cond_0
    return-void
.end method

.method public synthetic getDefaultTargetResolution()Landroid/util/Size;
    .locals 1

    invoke-static {p0}, Landroidx/camera/core/q2;->a(Landroidx/camera/core/ImageAnalysis$Analyzer;)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getTargetCoordinateSystem()I
    .locals 1

    invoke-static {p0}, Landroidx/camera/core/q2;->b(Landroidx/camera/core/ImageAnalysis$Analyzer;)I

    move-result v0

    return v0
.end method

.method public synthetic updateTransform(Landroid/graphics/Matrix;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/core/q2;->c(Landroidx/camera/core/ImageAnalysis$Analyzer;Landroid/graphics/Matrix;)V

    return-void
.end method
