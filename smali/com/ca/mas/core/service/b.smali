.class Lcom/ca/mas/core/service/b;
.super Ljava/lang/Object;
.source "MssoExecutorService.java"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/ThreadFactory;

.field private static f:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/ca/mas/core/service/b;->a:I

    add-int/lit8 v1, v0, 0x1

    .line 2
    sput v1, Lcom/ca/mas/core/service/b;->b:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 3
    sput v0, Lcom/ca/mas/core/service/b;->c:I

    .line 4
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/ca/mas/core/service/b;->d:Ljava/util/concurrent/BlockingQueue;

    .line 5
    new-instance v0, Lcom/ca/mas/core/service/b$a;

    invoke-direct {v0}, Lcom/ca/mas/core/service/b$a;-><init>()V

    sput-object v0, Lcom/ca/mas/core/service/b;->e:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 9

    .line 1
    sget-object v0, Lcom/ca/mas/core/service/b;->f:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/ca/mas/core/service/b;->b:I

    sget v3, Lcom/ca/mas/core/service/b;->c:I

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/ca/mas/core/service/b;->d:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/ca/mas/core/service/b;->e:Ljava/util/concurrent/ThreadFactory;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/ca/mas/core/service/b;->f:Ljava/util/concurrent/ExecutorService;

    .line 3
    :cond_1
    sget-object v0, Lcom/ca/mas/core/service/b;->f:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
