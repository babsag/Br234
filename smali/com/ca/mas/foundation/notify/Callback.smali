.class public Lcom/ca/mas/foundation/notify/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/Throwable;)Lcom/ca/mas/foundation/MASException;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ca/mas/foundation/notify/Callback;->b(Ljava/lang/Throwable;)Lcom/ca/mas/foundation/MASException;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/Throwable;)Lcom/ca/mas/foundation/MASException;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/ca/mas/core/error/MAGError;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/ca/mas/foundation/MASException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/ca/mas/foundation/MASException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/ca/mas/foundation/MASException;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lcom/ca/mas/foundation/MASException;

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Lcom/ca/mas/foundation/MASException;

    invoke-direct {v0, p0}, Lcom/ca/mas/foundation/MASException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getHandler(Lcom/ca/mas/foundation/MASCallback;)Landroid/os/Handler;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASCallback;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {p1}, Lcom/ca/mas/foundation/notify/Callback;->b(Ljava/lang/Throwable;)Lcom/ca/mas/foundation/MASException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ca/mas/foundation/MASCallback;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ca/mas/foundation/notify/Callback$b;

    invoke-direct {v1, p0, p1}, Lcom/ca/mas/foundation/notify/Callback$b;-><init>(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/ca/mas/foundation/notify/Callback;->b(Ljava/lang/Throwable;)Lcom/ca/mas/foundation/MASException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ca/mas/foundation/MASCallback;->onError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "TT;>;TT;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/ca/mas/foundation/MASCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ca/mas/foundation/notify/Callback$a;

    invoke-direct {v1, p0, p1}, Lcom/ca/mas/foundation/notify/Callback$a;-><init>(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ca/mas/foundation/MASCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
