.class public final synthetic Lcom/combateafraude/documentdetector/controller/camera/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/ImageAnalysis$Analyzer;


# instance fields
.field public final synthetic a:Lcom/combateafraude/documentdetector/controller/camera/CameraHelperCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/documentdetector/controller/camera/CameraHelperCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/camera/d;->a:Lcom/combateafraude/documentdetector/controller/camera/CameraHelperCallback;

    return-void
.end method


# virtual methods
.method public final analyze(Landroidx/camera/core/ImageProxy;)V
    .locals 1

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/camera/d;->a:Lcom/combateafraude/documentdetector/controller/camera/CameraHelperCallback;

    invoke-interface {v0, p1}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelperCallback;->onImageAvailable(Landroidx/camera/core/ImageProxy;)V

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
