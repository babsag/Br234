.class public final Landroidx/camera/core/impl/ConstantObservable;
.super Ljava/lang/Object;
.source "ConstantObservable.java"

# interfaces
.implements Landroidx/camera/core/impl/Observable;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/Observable<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Landroidx/camera/core/impl/ConstantObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/ConstantObservable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/camera/core/impl/ConstantObservable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/ConstantObservable;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroidx/camera/core/impl/ConstantObservable;->a:Landroidx/camera/core/impl/ConstantObservable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/ConstantObservable;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method private synthetic a(Landroidx/camera/core/impl/Observable$Observer;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/impl/ConstantObservable;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/camera/core/impl/Observable$Observer;->onNewData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2
    :goto_0
    invoke-interface {p1, v0}, Landroidx/camera/core/impl/Observable$Observer;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static withValue(Ljava/lang/Object;)Landroidx/camera/core/impl/Observable;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Landroidx/camera/core/impl/Observable<",
            "TU;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Landroidx/camera/core/impl/ConstantObservable;->a:Landroidx/camera/core/impl/ConstantObservable;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Landroidx/camera/core/impl/ConstantObservable;

    invoke-direct {v0, p0}, Landroidx/camera/core/impl/ConstantObservable;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addObserver(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/Observable$Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/camera/core/impl/Observable$Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/ConstantObservable;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Landroidx/camera/core/impl/g;

    invoke-direct {v1, p0, p2}, Landroidx/camera/core/impl/g;-><init>(Landroidx/camera/core/impl/ConstantObservable;Landroidx/camera/core/impl/Observable$Observer;)V

    invoke-interface {v0, v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public synthetic b(Landroidx/camera/core/impl/Observable$Observer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/impl/ConstantObservable;->a(Landroidx/camera/core/impl/Observable$Observer;)V

    return-void
.end method

.method public fetchData()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/ConstantObservable;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public removeObserver(Landroidx/camera/core/impl/Observable$Observer;)V
    .locals 0
    .param p1    # Landroidx/camera/core/impl/Observable$Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/Observable$Observer<",
            "-TT;>;)V"
        }
    .end annotation

    return-void
.end method
