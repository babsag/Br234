.class public Lcom/ca/mas/core/MASCallbackFuture;
.super Lcom/ca/mas/foundation/MASCallback;
.source "MASCallbackFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ca/mas/foundation/MASCallback<",
        "TT;>;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/CountDownLatch;

.field private b:Z

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/foundation/MASCallback;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/ca/mas/core/MASCallbackFuture;->a:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ca/mas/core/MASCallbackFuture;->b:Z

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported Operation"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/core/MASCallbackFuture;->b:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/MASCallbackFuture;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/core/MASCallbackFuture;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ca/mas/core/MASCallbackFuture;->c:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/ca/mas/core/MASCallbackFuture;->d:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 6
    iget-boolean v0, p0, Lcom/ca/mas/core/MASCallbackFuture;->b:Z

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/ca/mas/core/MASCallbackFuture;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/ca/mas/core/MASCallbackFuture;->d:Ljava/lang/Throwable;

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/ca/mas/core/MASCallbackFuture;->c:Ljava/lang/Object;

    return-object p1

    .line 10
    :cond_1
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object p2, p0, Lcom/ca/mas/core/MASCallbackFuture;->d:Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/core/MASCallbackFuture;->b:Z

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/MASCallbackFuture;->d:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/ca/mas/core/MASCallbackFuture;->b:Z

    .line 3
    iget-object p1, p0, Lcom/ca/mas/core/MASCallbackFuture;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/MASCallbackFuture;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/ca/mas/core/MASCallbackFuture;->b:Z

    .line 3
    iget-object p1, p0, Lcom/ca/mas/core/MASCallbackFuture;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
