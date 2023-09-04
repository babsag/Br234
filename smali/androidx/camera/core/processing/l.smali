.class public final synthetic Landroidx/camera/core/processing/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic a:Landroidx/camera/core/processing/SettableSurface;

.field public final synthetic b:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

.field public final synthetic c:Landroid/util/Size;

.field public final synthetic d:Landroid/graphics/Rect;

.field public final synthetic e:I

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroid/util/Size;Landroid/graphics/Rect;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/l;->a:Landroidx/camera/core/processing/SettableSurface;

    iput-object p2, p0, Landroidx/camera/core/processing/l;->b:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    iput-object p3, p0, Landroidx/camera/core/processing/l;->c:Landroid/util/Size;

    iput-object p4, p0, Landroidx/camera/core/processing/l;->d:Landroid/graphics/Rect;

    iput p5, p0, Landroidx/camera/core/processing/l;->e:I

    iput-boolean p6, p0, Landroidx/camera/core/processing/l;->f:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    iget-object v0, p0, Landroidx/camera/core/processing/l;->a:Landroidx/camera/core/processing/SettableSurface;

    iget-object v1, p0, Landroidx/camera/core/processing/l;->b:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    iget-object v2, p0, Landroidx/camera/core/processing/l;->c:Landroid/util/Size;

    iget-object v3, p0, Landroidx/camera/core/processing/l;->d:Landroid/graphics/Rect;

    iget v4, p0, Landroidx/camera/core/processing/l;->e:I

    iget-boolean v5, p0, Landroidx/camera/core/processing/l;->f:Z

    move-object v6, p1

    check-cast v6, Landroid/view/Surface;

    invoke-virtual/range {v0 .. v6}, Landroidx/camera/core/processing/SettableSurface;->i(Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroid/util/Size;Landroid/graphics/Rect;IZLandroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
