.class Landroidx/camera/view/z$a;
.super Ljava/lang/Object;
.source "PreviewStreamStateObserver.java"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/view/z;->j(Landroidx/camera/core/CameraInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroidx/camera/core/CameraInfo;

.field final synthetic c:Landroidx/camera/view/z;


# direct methods
.method constructor <init>(Landroidx/camera/view/z;Ljava/util/List;Landroidx/camera/core/CameraInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/view/z$a;->c:Landroidx/camera/view/z;

    iput-object p2, p0, Landroidx/camera/view/z$a;->a:Ljava/util/List;

    iput-object p3, p0, Landroidx/camera/view/z$a;->b:Landroidx/camera/core/CameraInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 1
    .param p1    # Ljava/lang/Void;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/camera/view/z$a;->c:Landroidx/camera/view/z;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/camera/view/z;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/camera/view/z$a;->c:Landroidx/camera/view/z;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/camera/view/z;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    iget-object p1, p0, Landroidx/camera/view/z$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Landroidx/camera/view/z$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 4
    iget-object v1, p0, Landroidx/camera/view/z$a;->b:Landroidx/camera/core/CameraInfo;

    check-cast v1, Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v1, v0}, Landroidx/camera/core/impl/CameraInfoInternal;->removeSessionCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/camera/view/z$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/camera/view/z$a;->a(Ljava/lang/Void;)V

    return-void
.end method
