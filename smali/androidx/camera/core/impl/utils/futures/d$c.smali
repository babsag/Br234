.class Landroidx/camera/core/impl/utils/futures/d$c;
.super Ljava/lang/Object;
.source "ListFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/impl/utils/futures/d;->d(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/common/util/concurrent/ListenableFuture;

.field final synthetic c:Landroidx/camera/core/impl/utils/futures/d;


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/utils/futures/d;ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/core/impl/utils/futures/d$c;->c:Landroidx/camera/core/impl/utils/futures/d;

    iput p2, p0, Landroidx/camera/core/impl/utils/futures/d$c;->a:I

    iput-object p3, p0, Landroidx/camera/core/impl/utils/futures/d$c;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/d$c;->c:Landroidx/camera/core/impl/utils/futures/d;

    iget v1, p0, Landroidx/camera/core/impl/utils/futures/d$c;->a:I

    iget-object v2, p0, Landroidx/camera/core/impl/utils/futures/d$c;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/utils/futures/d;->e(ILjava/util/concurrent/Future;)V

    return-void
.end method
