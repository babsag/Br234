.class public final synthetic Landroidx/camera/core/processing/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;

.field public final synthetic b:Landroidx/camera/core/SurfaceRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/r;->a:Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;

    iput-object p2, p0, Landroidx/camera/core/processing/r;->b:Landroidx/camera/core/SurfaceRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/processing/r;->a:Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;

    iget-object v1, p0, Landroidx/camera/core/processing/r;->b:Landroidx/camera/core/SurfaceRequest;

    invoke-virtual {v0, v1}, Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;->b(Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method
