.class public final synthetic Landroidx/camera/camera2/internal/k0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/q2$c;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/q2$c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/k0;->a:Landroidx/camera/camera2/internal/q2$c;

    iput p2, p0, Landroidx/camera/camera2/internal/k0;->b:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/k0;->a:Landroidx/camera/camera2/internal/q2$c;

    iget v1, p0, Landroidx/camera/camera2/internal/k0;->b:I

    check-cast p1, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/camera2/internal/q2$c;->f(ILandroid/hardware/camera2/TotalCaptureResult;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
