.class Landroidx/camera/core/w2$b;
.super Ljava/lang/Object;
.source "ProcessingImageReader.java"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/w2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/camera/core/w2;


# direct methods
.method constructor <init>(Landroidx/camera/core/w2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/core/w2$b;->a:Landroidx/camera/core/w2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/w2$b;->a:Landroidx/camera/core/w2;

    invoke-interface {p1, v0}, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;->onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method


# virtual methods
.method public synthetic b(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/w2$b;->a(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V

    return-void
.end method

.method public onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 3
    .param p1    # Landroidx/camera/core/impl/ImageReaderProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/camera/core/w2$b;->a:Landroidx/camera/core/w2;

    iget-object p1, p1, Landroidx/camera/core/w2;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/w2$b;->a:Landroidx/camera/core/w2;

    iget-object v1, v0, Landroidx/camera/core/w2;->i:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    .line 3
    iget-object v2, v0, Landroidx/camera/core/w2;->j:Ljava/util/concurrent/Executor;

    .line 4
    iget-object v0, v0, Landroidx/camera/core/w2;->q:Landroidx/camera/core/y2;

    invoke-virtual {v0}, Landroidx/camera/core/y2;->c()V

    .line 5
    iget-object v0, p0, Landroidx/camera/core/w2$b;->a:Landroidx/camera/core/w2;

    invoke-virtual {v0}, Landroidx/camera/core/w2;->n()V

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    .line 7
    new-instance p1, Landroidx/camera/core/w0;

    invoke-direct {p1, p0, v1}, Landroidx/camera/core/w0;-><init>(Landroidx/camera/core/w2$b;Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V

    invoke-interface {v2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Landroidx/camera/core/w2$b;->a:Landroidx/camera/core/w2;

    invoke-interface {v1, p1}, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;->onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
