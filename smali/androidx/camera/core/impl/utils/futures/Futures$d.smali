.class Landroidx/camera/core/impl/utils/futures/Futures$d;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/impl/utils/futures/Futures;->b(ZLcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/core/impl/utils/futures/Futures$d;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/Futures$d;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method
