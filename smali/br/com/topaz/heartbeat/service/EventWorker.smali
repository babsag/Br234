.class public Lbr/com/topaz/heartbeat/service/EventWorker;
.super Landroidx/work/ListenableWorker;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/service/EventWorker;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbr/com/topaz/l0/a;

    invoke-direct {v0}, Lbr/com/topaz/l0/a;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbr/com/topaz/l0/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/heartbeat/service/EventWorker;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/service/EventWorker;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStopped()V
    .locals 0

    invoke-super {p0}, Landroidx/work/ListenableWorker;->onStopped()V

    return-void
.end method

.method public startWork()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    new-instance v0, Lbr/com/topaz/heartbeat/service/EventWorker$a;

    invoke-direct {v0, p0}, Lbr/com/topaz/heartbeat/service/EventWorker$a;-><init>(Lbr/com/topaz/heartbeat/service/EventWorker;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
