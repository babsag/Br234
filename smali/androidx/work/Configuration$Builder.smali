.class public final Landroidx/work/Configuration$Builder;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field a:Ljava/util/concurrent/Executor;

.field b:Landroidx/work/WorkerFactory;

.field c:Landroidx/work/InputMergerFactory;

.field d:Ljava/util/concurrent/Executor;

.field e:Landroidx/work/RunnableScheduler;

.field f:Landroidx/work/InitializationExceptionHandler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field h:I

.field i:I

.field j:I

.field k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Landroidx/work/Configuration$Builder;->h:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/work/Configuration$Builder;->i:I

    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Landroidx/work/Configuration$Builder;->j:I

    const/16 v0, 0x14

    .line 5
    iput v0, p0, Landroidx/work/Configuration$Builder;->k:I

    return-void
.end method

.method public constructor <init>(Landroidx/work/Configuration;)V
    .locals 1
    .param p1    # Landroidx/work/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object v0, p1, Landroidx/work/Configuration;->a:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->a:Ljava/util/concurrent/Executor;

    .line 8
    iget-object v0, p1, Landroidx/work/Configuration;->c:Landroidx/work/WorkerFactory;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->b:Landroidx/work/WorkerFactory;

    .line 9
    iget-object v0, p1, Landroidx/work/Configuration;->d:Landroidx/work/InputMergerFactory;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->c:Landroidx/work/InputMergerFactory;

    .line 10
    iget-object v0, p1, Landroidx/work/Configuration;->b:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->d:Ljava/util/concurrent/Executor;

    .line 11
    iget v0, p1, Landroidx/work/Configuration;->h:I

    iput v0, p0, Landroidx/work/Configuration$Builder;->h:I

    .line 12
    iget v0, p1, Landroidx/work/Configuration;->i:I

    iput v0, p0, Landroidx/work/Configuration$Builder;->i:I

    .line 13
    iget v0, p1, Landroidx/work/Configuration;->j:I

    iput v0, p0, Landroidx/work/Configuration$Builder;->j:I

    .line 14
    iget v0, p1, Landroidx/work/Configuration;->k:I

    iput v0, p0, Landroidx/work/Configuration$Builder;->k:I

    .line 15
    iget-object v0, p1, Landroidx/work/Configuration;->e:Landroidx/work/RunnableScheduler;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->e:Landroidx/work/RunnableScheduler;

    .line 16
    iget-object v0, p1, Landroidx/work/Configuration;->f:Landroidx/work/InitializationExceptionHandler;

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->f:Landroidx/work/InitializationExceptionHandler;

    .line 17
    iget-object p1, p1, Landroidx/work/Configuration;->g:Ljava/lang/String;

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Landroidx/work/Configuration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/Configuration;

    invoke-direct {v0, p0}, Landroidx/work/Configuration;-><init>(Landroidx/work/Configuration$Builder;)V

    return-object v0
.end method

.method public setDefaultProcessName(Ljava/lang/String;)Landroidx/work/Configuration$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Landroidx/work/Configuration$Builder;
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executor"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->a:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public setInitializationExceptionHandler(Landroidx/work/InitializationExceptionHandler;)Landroidx/work/Configuration$Builder;
    .locals 0
    .param p1    # Landroidx/work/InitializationExceptionHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exceptionHandler"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->f:Landroidx/work/InitializationExceptionHandler;

    return-object p0
.end method

.method public setInputMergerFactory(Landroidx/work/InputMergerFactory;)Landroidx/work/Configuration$Builder;
    .locals 0
    .param p1    # Landroidx/work/InputMergerFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputMergerFactory"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->c:Landroidx/work/InputMergerFactory;

    return-object p0
.end method

.method public setJobSchedulerJobIdRange(II)Landroidx/work/Configuration$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "minJobSchedulerId",
            "maxJobSchedulerId"
        }
    .end annotation

    sub-int v0, p2, p1

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 1
    iput p1, p0, Landroidx/work/Configuration$Builder;->i:I

    .line 2
    iput p2, p0, Landroidx/work/Configuration$Builder;->j:I

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "WorkManager needs a range of at least 1000 job ids."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxSchedulerLimit(I)Landroidx/work/Configuration$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxSchedulerLimit"
        }
    .end annotation

    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    const/16 v0, 0x32

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/work/Configuration$Builder;->k:I

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "WorkManager needs to be able to schedule at least 20 jobs in JobScheduler."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinimumLoggingLevel(I)Landroidx/work/Configuration$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loggingLevel"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/work/Configuration$Builder;->h:I

    return-object p0
.end method

.method public setRunnableScheduler(Landroidx/work/RunnableScheduler;)Landroidx/work/Configuration$Builder;
    .locals 0
    .param p1    # Landroidx/work/RunnableScheduler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnableScheduler"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->e:Landroidx/work/RunnableScheduler;

    return-object p0
.end method

.method public setTaskExecutor(Ljava/util/concurrent/Executor;)Landroidx/work/Configuration$Builder;
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskExecutor"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->d:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public setWorkerFactory(Landroidx/work/WorkerFactory;)Landroidx/work/Configuration$Builder;
    .locals 0
    .param p1    # Landroidx/work/WorkerFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workerFactory"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->b:Landroidx/work/WorkerFactory;

    return-object p0
.end method
