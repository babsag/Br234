.class abstract Landroidx/camera/core/imagecapture/z$a;
.super Ljava/lang/Object;
.source "CaptureNode.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/imagecapture/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field private a:Landroidx/camera/core/impl/CameraCaptureCallback;

.field private b:Landroidx/camera/core/impl/DeferrableSurface;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static g(Landroid/util/Size;I)Landroidx/camera/core/imagecapture/z$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/imagecapture/r;

    new-instance v1, Landroidx/camera/core/processing/Edge;

    invoke-direct {v1}, Landroidx/camera/core/processing/Edge;-><init>()V

    invoke-direct {v0, p0, p1, v1}, Landroidx/camera/core/imagecapture/r;-><init>(Landroid/util/Size;ILandroidx/camera/core/processing/Edge;)V

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/z$a;->b:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    return-void
.end method

.method b()Landroidx/camera/core/impl/CameraCaptureCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/z$a;->a:Landroidx/camera/core/impl/CameraCaptureCallback;

    return-object v0
.end method

.method abstract c()I
.end method

.method abstract d()Landroidx/camera/core/processing/Edge;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/processing/Edge<",
            "Landroidx/camera/core/imagecapture/e0;",
            ">;"
        }
    .end annotation
.end method

.method abstract e()Landroid/util/Size;
.end method

.method f()Landroidx/camera/core/impl/DeferrableSurface;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/z$a;->b:Landroidx/camera/core/impl/DeferrableSurface;

    return-object v0
.end method

.method h(Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .locals 0
    .param p1    # Landroidx/camera/core/impl/CameraCaptureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/camera/core/imagecapture/z$a;->a:Landroidx/camera/core/impl/CameraCaptureCallback;

    return-void
.end method

.method i(Landroid/view/Surface;)V
    .locals 2
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/z$a;->b:Landroidx/camera/core/impl/DeferrableSurface;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The surface is already set."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 2
    new-instance v0, Landroidx/camera/core/impl/ImmediateSurface;

    invoke-direct {v0, p1}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/z$a;->b:Landroidx/camera/core/impl/DeferrableSurface;

    return-void
.end method
