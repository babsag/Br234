.class public final synthetic Landroidx/camera/camera2/internal/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;Ljava/util/List;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/k;->a:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/k;->b:Ljava/util/List;

    iput p3, p0, Landroidx/camera/camera2/internal/k;->c:I

    iput p4, p0, Landroidx/camera/camera2/internal/k;->d:I

    iput p5, p0, Landroidx/camera/camera2/internal/k;->e:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    iget-object v0, p0, Landroidx/camera/camera2/internal/k;->a:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/k;->b:Ljava/util/List;

    iget v2, p0, Landroidx/camera/camera2/internal/k;->c:I

    iget v3, p0, Landroidx/camera/camera2/internal/k;->d:I

    iget v4, p0, Landroidx/camera/camera2/internal/k;->e:I

    move-object v5, p1

    check-cast v5, Ljava/lang/Void;

    invoke-virtual/range {v0 .. v5}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->B(Ljava/util/List;IIILjava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
