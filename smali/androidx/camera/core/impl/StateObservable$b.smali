.class final Landroidx/camera/core/impl/StateObservable$b;
.super Ljava/lang/Object;
.source "StateObservable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/StateObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Landroidx/camera/core/impl/Observable$Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Observable$Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;

.field private g:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private h:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/StateObservable$b;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/atomic/AtomicReference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/impl/Observable$Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/camera/core/impl/Observable$Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/camera/core/impl/StateObservable$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    sget-object v0, Landroidx/camera/core/impl/StateObservable$b;->a:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/camera/core/impl/StateObservable$b;->f:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Landroidx/camera/core/impl/StateObservable$b;->g:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/camera/core/impl/StateObservable$b;->h:Z

    .line 6
    iput-object p1, p0, Landroidx/camera/core/impl/StateObservable$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    iput-object p2, p0, Landroidx/camera/core/impl/StateObservable$b;->b:Ljava/util/concurrent/Executor;

    .line 8
    iput-object p3, p0, Landroidx/camera/core/impl/StateObservable$b;->c:Landroidx/camera/core/impl/Observable$Observer;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/StateObservable$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method b(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/impl/StateObservable$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Landroidx/camera/core/impl/StateObservable$b;->g:I

    if-gt p1, v0, :cond_1

    monitor-exit p0

    return-void

    .line 4
    :cond_1
    iput p1, p0, Landroidx/camera/core/impl/StateObservable$b;->g:I

    .line 5
    iget-boolean p1, p0, Landroidx/camera/core/impl/StateObservable$b;->h:Z

    if-eqz p1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroidx/camera/core/impl/StateObservable$b;->h:Z

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    :try_start_1
    iget-object p1, p0, Landroidx/camera/core/impl/StateObservable$b;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :catchall_0
    monitor-enter p0

    const/4 p1, 0x0

    .line 10
    :try_start_2
    iput-boolean p1, p0, Landroidx/camera/core/impl/StateObservable$b;->h:Z

    .line 11
    monitor-exit p0

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 12
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method public run()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/impl/StateObservable$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iput-boolean v1, p0, Landroidx/camera/core/impl/StateObservable$b;->h:Z

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/StateObservable$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget v2, p0, Landroidx/camera/core/impl/StateObservable$b;->g:I

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :goto_0
    iget-object v3, p0, Landroidx/camera/core/impl/StateObservable$b;->f:Ljava/lang/Object;

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    iput-object v0, p0, Landroidx/camera/core/impl/StateObservable$b;->f:Ljava/lang/Object;

    .line 10
    instance-of v3, v0, Landroidx/camera/core/impl/StateObservable$a;

    if-eqz v3, :cond_1

    .line 11
    iget-object v3, p0, Landroidx/camera/core/impl/StateObservable$b;->c:Landroidx/camera/core/impl/Observable$Observer;

    check-cast v0, Landroidx/camera/core/impl/StateObservable$a;

    invoke-virtual {v0}, Landroidx/camera/core/impl/StateObservable$a;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v3, v0}, Landroidx/camera/core/impl/Observable$Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v3, p0, Landroidx/camera/core/impl/StateObservable$b;->c:Landroidx/camera/core/impl/Observable$Observer;

    invoke-interface {v3, v0}, Landroidx/camera/core/impl/Observable$Observer;->onNewData(Ljava/lang/Object;)V

    .line 13
    :cond_2
    :goto_1
    monitor-enter p0

    .line 14
    :try_start_1
    iget v0, p0, Landroidx/camera/core/impl/StateObservable$b;->g:I

    if-eq v2, v0, :cond_4

    iget-object v0, p0, Landroidx/camera/core/impl/StateObservable$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    iget-object v0, p0, Landroidx/camera/core/impl/StateObservable$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 16
    iget v2, p0, Landroidx/camera/core/impl/StateObservable$b;->g:I

    .line 17
    monitor-exit p0

    goto :goto_0

    .line 18
    :cond_4
    :goto_2
    iput-boolean v1, p0, Landroidx/camera/core/impl/StateObservable$b;->h:Z

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 21
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
