.class public Lorg/junit/internal/runners/ClassRoadie;
.super Ljava/lang/Object;
.source "ClassRoadie.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lorg/junit/runner/notification/RunNotifier;

.field private b:Lorg/junit/internal/runners/TestClass;

.field private c:Lorg/junit/runner/Description;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/internal/runners/TestClass;Lorg/junit/runner/Description;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/junit/internal/runners/ClassRoadie;->a:Lorg/junit/runner/notification/RunNotifier;

    .line 3
    iput-object p2, p0, Lorg/junit/internal/runners/ClassRoadie;->b:Lorg/junit/internal/runners/TestClass;

    .line 4
    iput-object p3, p0, Lorg/junit/internal/runners/ClassRoadie;->c:Lorg/junit/runner/Description;

    .line 5
    iput-object p4, p0, Lorg/junit/internal/runners/ClassRoadie;->d:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/junit/internal/runners/ClassRoadie;->b:Lorg/junit/internal/runners/TestClass;

    invoke-virtual {v0}, Lorg/junit/internal/runners/TestClass;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-virtual {p0, v1}, Lorg/junit/internal/runners/ClassRoadie;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/junit/internal/runners/ClassRoadie;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/runners/a;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/junit/internal/runners/ClassRoadie;->b:Lorg/junit/internal/runners/TestClass;

    invoke-virtual {v0}, Lorg/junit/internal/runners/TestClass;->b()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/junit/internal/runners/ClassRoadie;->addFailure(Ljava/lang/Throwable;)V

    .line 6
    new-instance v0, Lorg/junit/internal/runners/a;

    invoke-direct {v0}, Lorg/junit/internal/runners/a;-><init>()V

    throw v0

    .line 7
    :catch_1
    new-instance v0, Lorg/junit/internal/runners/a;

    invoke-direct {v0}, Lorg/junit/internal/runners/a;-><init>()V

    throw v0
.end method


# virtual methods
.method protected addFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/junit/internal/runners/ClassRoadie;->a:Lorg/junit/runner/notification/RunNotifier;

    new-instance v1, Lorg/junit/runner/notification/Failure;

    iget-object v2, p0, Lorg/junit/internal/runners/ClassRoadie;->c:Lorg/junit/runner/Description;

    invoke-direct {v1, v2, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailure(Lorg/junit/runner/notification/Failure;)V

    return-void
.end method

.method public runProtected()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lorg/junit/internal/runners/ClassRoadie;->b()V

    .line 2
    invoke-virtual {p0}, Lorg/junit/internal/runners/ClassRoadie;->runUnprotected()V
    :try_end_0
    .catch Lorg/junit/internal/runners/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-direct {p0}, Lorg/junit/internal/runners/ClassRoadie;->a()V

    throw v0

    :catch_0
    :goto_0
    invoke-direct {p0}, Lorg/junit/internal/runners/ClassRoadie;->a()V

    return-void
.end method

.method protected runUnprotected()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/junit/internal/runners/ClassRoadie;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
