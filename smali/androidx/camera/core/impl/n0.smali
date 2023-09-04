.class public final synthetic Landroidx/camera/core/impl/n0;
.super Ljava/lang/Object;
.source "CaptureProcessor.java"


# direct methods
.method public static a(Landroidx/camera/core/impl/CaptureProcessor;)V
    .locals 0

    return-void
.end method

.method public static b(Landroidx/camera/core/impl/CaptureProcessor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/CaptureProcessor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
