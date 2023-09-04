.class Landroidx/camera/core/processing/SurfaceProcessorNode$a;
.super Ljava/lang/Object;
.source "SurfaceProcessorNode.java"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/processing/SurfaceProcessorNode;->e(Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/processing/SettableSurface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Landroidx/camera/core/SurfaceOutput;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/camera/core/SurfaceRequest;

.field final synthetic b:Landroidx/camera/core/processing/SettableSurface;

.field final synthetic c:Landroidx/camera/core/processing/SettableSurface;

.field final synthetic d:Landroidx/camera/core/processing/SurfaceProcessorNode;


# direct methods
.method constructor <init>(Landroidx/camera/core/processing/SurfaceProcessorNode;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/processing/SettableSurface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$a;->d:Landroidx/camera/core/processing/SurfaceProcessorNode;

    iput-object p2, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$a;->a:Landroidx/camera/core/SurfaceRequest;

    iput-object p3, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$a;->b:Landroidx/camera/core/processing/SettableSurface;

    iput-object p4, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$a;->c:Landroidx/camera/core/processing/SettableSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/camera/core/SurfaceOutput;)V
    .locals 4
    .param p1    # Landroidx/camera/core/SurfaceOutput;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$a;->d:Landroidx/camera/core/processing/SurfaceProcessorNode;

    iget-object v0, v0, Landroidx/camera/core/processing/SurfaceProcessorNode;->b:Landroidx/camera/core/processing/SurfaceProcessorInternal;

    invoke-interface {v0, p1}, Landroidx/camera/core/SurfaceProcessor;->onOutputSurface(Landroidx/camera/core/SurfaceOutput;)V

    .line 3
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$a;->d:Landroidx/camera/core/processing/SurfaceProcessorNode;

    iget-object v0, v0, Landroidx/camera/core/processing/SurfaceProcessorNode;->b:Landroidx/camera/core/processing/SurfaceProcessorInternal;

    iget-object v1, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$a;->a:Landroidx/camera/core/SurfaceRequest;

    invoke-interface {v0, v1}, Landroidx/camera/core/SurfaceProcessor;->onInputSurface(Landroidx/camera/core/SurfaceRequest;)V

    .line 4
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$a;->d:Landroidx/camera/core/processing/SurfaceProcessorNode;

    iget-object v1, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$a;->b:Landroidx/camera/core/processing/SettableSurface;

    iget-object v2, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$a;->a:Landroidx/camera/core/SurfaceRequest;

    iget-object v3, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$a;->c:Landroidx/camera/core/processing/SettableSurface;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/camera/core/processing/SurfaceProcessorNode;->f(Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/SurfaceOutput;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$a;->a:Landroidx/camera/core/SurfaceRequest;

    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->willNotProvideSurface()Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroidx/camera/core/SurfaceOutput;

    invoke-virtual {p0, p1}, Landroidx/camera/core/processing/SurfaceProcessorNode$a;->a(Landroidx/camera/core/SurfaceOutput;)V

    return-void
.end method
