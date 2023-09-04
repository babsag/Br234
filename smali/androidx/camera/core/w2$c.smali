.class Landroidx/camera/core/w2$c;
.super Ljava/lang/Object;
.source "ProcessingImageReader.java"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/w2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Ljava/util/List<",
        "Landroidx/camera/core/ImageProxy;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/camera/core/w2;


# direct methods
.method constructor <init>(Landroidx/camera/core/w2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/core/w2$c;->a:Landroidx/camera/core/w2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroidx/camera/core/w2$f;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 2
    invoke-interface {p0, v0, p1}, Landroidx/camera/core/w2$f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/ImageProxy;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Landroidx/camera/core/w2$c;->a:Landroidx/camera/core/w2;

    iget-object p1, p1, Landroidx/camera/core/w2;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/w2$c;->a:Landroidx/camera/core/w2;

    iget-boolean v1, v0, Landroidx/camera/core/w2;->e:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit p1

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroidx/camera/core/w2;->f:Z

    .line 5
    iget-object v1, v0, Landroidx/camera/core/w2;->q:Landroidx/camera/core/y2;

    .line 6
    iget-object v2, v0, Landroidx/camera/core/w2;->t:Landroidx/camera/core/w2$f;

    .line 7
    iget-object v3, v0, Landroidx/camera/core/w2;->u:Ljava/util/concurrent/Executor;

    .line 8
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    iget-object p1, v0, Landroidx/camera/core/w2;->n:Landroidx/camera/core/impl/CaptureProcessor;

    invoke-interface {p1, v1}, Landroidx/camera/core/impl/CaptureProcessor;->process(Landroidx/camera/core/impl/ImageProxyBundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    iget-object v0, p0, Landroidx/camera/core/w2$c;->a:Landroidx/camera/core/w2;

    iget-object v0, v0, Landroidx/camera/core/w2;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_2
    iget-object v1, p0, Landroidx/camera/core/w2$c;->a:Landroidx/camera/core/w2;

    iget-object v1, v1, Landroidx/camera/core/w2;->q:Landroidx/camera/core/y2;

    invoke-virtual {v1}, Landroidx/camera/core/y2;->c()V

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 12
    new-instance v1, Landroidx/camera/core/x0;

    invoke-direct {v1, v2, p1}, Landroidx/camera/core/x0;-><init>(Landroidx/camera/core/w2$f;Ljava/lang/Exception;)V

    invoke-interface {v3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    :goto_0
    iget-object p1, p0, Landroidx/camera/core/w2$c;->a:Landroidx/camera/core/w2;

    iget-object p1, p1, Landroidx/camera/core/w2;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 15
    :try_start_3
    iget-object v0, p0, Landroidx/camera/core/w2$c;->a:Landroidx/camera/core/w2;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/camera/core/w2;->f:Z

    .line 16
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    invoke-virtual {v0}, Landroidx/camera/core/w2;->b()V

    return-void

    :catchall_0
    move-exception v0

    .line 18
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 19
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :catchall_2
    move-exception v0

    .line 20
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/camera/core/w2$c;->b(Ljava/util/List;)V

    return-void
.end method
