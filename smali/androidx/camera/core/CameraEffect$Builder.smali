.class public Landroidx/camera/core/CameraEffect$Builder;
.super Ljava/lang/Object;
.source "CameraEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/CameraEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Landroidx/camera/core/SurfaceProcessor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroidx/camera/core/ImageProcessor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/camera/core/CameraEffect$Builder;->a:I

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/core/CameraEffect;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraEffect$Builder;->b:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Must have a executor"

    invoke-static {v0, v3}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/camera/core/CameraEffect$Builder;->d:Landroidx/camera/core/ImageProcessor;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Landroidx/camera/core/CameraEffect$Builder;->c:Landroidx/camera/core/SurfaceProcessor;

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    xor-int/2addr v0, v1

    const-string v1, "Must have one and only one processor"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Landroidx/camera/core/CameraEffect$Builder;->c:Landroidx/camera/core/SurfaceProcessor;

    if-eqz v0, :cond_3

    .line 4
    new-instance v1, Landroidx/camera/core/CameraEffect;

    iget v2, p0, Landroidx/camera/core/CameraEffect$Builder;->a:I

    iget-object v3, p0, Landroidx/camera/core/CameraEffect$Builder;->b:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2, v3, v0}, Landroidx/camera/core/CameraEffect;-><init>(ILjava/util/concurrent/Executor;Landroidx/camera/core/SurfaceProcessor;)V

    return-object v1

    .line 5
    :cond_3
    new-instance v0, Landroidx/camera/core/CameraEffect;

    iget v1, p0, Landroidx/camera/core/CameraEffect$Builder;->a:I

    iget-object v2, p0, Landroidx/camera/core/CameraEffect$Builder;->b:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroidx/camera/core/CameraEffect$Builder;->d:Landroidx/camera/core/ImageProcessor;

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/core/CameraEffect;-><init>(ILjava/util/concurrent/Executor;Landroidx/camera/core/ImageProcessor;)V

    return-object v0
.end method

.method public setImageProcessor(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageProcessor;)Landroidx/camera/core/CameraEffect$Builder;
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/ImageProcessor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/camera/core/CameraEffect$Builder;->b:Ljava/util/concurrent/Executor;

    .line 2
    iput-object p2, p0, Landroidx/camera/core/CameraEffect$Builder;->d:Landroidx/camera/core/ImageProcessor;

    return-object p0
.end method

.method public setSurfaceProcessor(Ljava/util/concurrent/Executor;Landroidx/camera/core/SurfaceProcessor;)Landroidx/camera/core/CameraEffect$Builder;
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/SurfaceProcessor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/camera/core/CameraEffect$Builder;->b:Ljava/util/concurrent/Executor;

    .line 2
    iput-object p2, p0, Landroidx/camera/core/CameraEffect$Builder;->c:Landroidx/camera/core/SurfaceProcessor;

    return-object p0
.end method
