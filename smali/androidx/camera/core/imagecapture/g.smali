.class public final synthetic Landroidx/camera/core/imagecapture/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/imagecapture/e0;

.field public final synthetic b:Landroidx/camera/core/ImageCaptureException;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/e0;Landroidx/camera/core/ImageCaptureException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/g;->a:Landroidx/camera/core/imagecapture/e0;

    iput-object p2, p0, Landroidx/camera/core/imagecapture/g;->b:Landroidx/camera/core/ImageCaptureException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/imagecapture/g;->a:Landroidx/camera/core/imagecapture/e0;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/g;->b:Landroidx/camera/core/ImageCaptureException;

    invoke-static {v0, v1}, Landroidx/camera/core/imagecapture/ProcessingNode;->c(Landroidx/camera/core/imagecapture/e0;Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method
