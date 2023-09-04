.class public final synthetic Landroidx/camera/core/imagecapture/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/imagecapture/TakePictureManager;

.field public final synthetic b:Landroidx/camera/core/imagecapture/e0;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/TakePictureManager;Landroidx/camera/core/imagecapture/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/k;->a:Landroidx/camera/core/imagecapture/TakePictureManager;

    iput-object p2, p0, Landroidx/camera/core/imagecapture/k;->b:Landroidx/camera/core/imagecapture/e0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/imagecapture/k;->a:Landroidx/camera/core/imagecapture/TakePictureManager;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/k;->b:Landroidx/camera/core/imagecapture/e0;

    invoke-virtual {v0, v1}, Landroidx/camera/core/imagecapture/TakePictureManager;->d(Landroidx/camera/core/imagecapture/e0;)V

    return-void
.end method
