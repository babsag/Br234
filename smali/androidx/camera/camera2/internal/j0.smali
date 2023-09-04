.class public final synthetic Landroidx/camera/camera2/internal/j0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/q2$c;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/q2$c;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/j0;->a:Landroidx/camera/camera2/internal/q2$c;

    iput-object p2, p0, Landroidx/camera/camera2/internal/j0;->b:Ljava/util/List;

    iput p3, p0, Landroidx/camera/camera2/internal/j0;->c:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/j0;->a:Landroidx/camera/camera2/internal/q2$c;

    iget-object v1, p0, Landroidx/camera/camera2/internal/j0;->b:Ljava/util/List;

    iget v2, p0, Landroidx/camera/camera2/internal/j0;->c:I

    check-cast p1, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/camera/camera2/internal/q2$c;->k(Ljava/util/List;ILandroid/hardware/camera2/TotalCaptureResult;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
