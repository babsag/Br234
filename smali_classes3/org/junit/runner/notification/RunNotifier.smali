.class public Lorg/junit/runner/notification/RunNotifier;
.super Ljava/lang/Object;
.source "RunNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/runner/notification/RunNotifier$h;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/RunListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/junit/runner/notification/RunNotifier;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/junit/runner/notification/RunNotifier;->b:Z

    return-void
.end method

.method static synthetic a(Lorg/junit/runner/notification/RunNotifier;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/junit/runner/notification/RunNotifier;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lorg/junit/runner/notification/RunNotifier;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/junit/runner/notification/RunNotifier;->c(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private c(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/RunListener;",
            ">;",
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/Failure;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$d;

    invoke-direct {v0, p0, p1, p2}, Lorg/junit/runner/notification/RunNotifier$d;-><init>(Lorg/junit/runner/notification/RunNotifier;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$h;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addFirstListener(Lorg/junit/runner/notification/RunListener;)V
    .locals 2

    const-string v0, "Cannot add a null listener"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/junit/runner/notification/RunNotifier;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/junit/runner/notification/RunNotifier;->d(Lorg/junit/runner/notification/RunListener;)Lorg/junit/runner/notification/RunListener;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addListener(Lorg/junit/runner/notification/RunListener;)V
    .locals 1

    const-string v0, "Cannot add a null listener"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/junit/runner/notification/RunNotifier;->a:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/junit/runner/notification/RunNotifier;->d(Lorg/junit/runner/notification/RunListener;)Lorg/junit/runner/notification/RunListener;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method d(Lorg/junit/runner/notification/RunListener;)Lorg/junit/runner/notification/RunListener;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/junit/runner/notification/RunListener$ThreadSafe;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/junit/runner/notification/a;

    invoke-direct {v0, p1, p0}, Lorg/junit/runner/notification/a;-><init>(Lorg/junit/runner/notification/RunListener;Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public fireTestAssumptionFailed(Lorg/junit/runner/notification/Failure;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$e;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/RunNotifier$e;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/notification/Failure;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$h;->b()V

    return-void
.end method

.method public fireTestFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/junit/runner/notification/RunNotifier;->a:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/junit/runner/notification/Failure;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/junit/runner/notification/RunNotifier;->c(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public fireTestFinished(Lorg/junit/runner/Description;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$g;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/RunNotifier$g;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$h;->b()V

    return-void
.end method

.method public fireTestIgnored(Lorg/junit/runner/Description;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$f;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/RunNotifier$f;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$h;->b()V

    return-void
.end method

.method public fireTestRunFinished(Lorg/junit/runner/Result;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$b;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/RunNotifier$b;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Result;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$h;->b()V

    return-void
.end method

.method public fireTestRunStarted(Lorg/junit/runner/Description;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$a;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/RunNotifier$a;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$h;->b()V

    return-void
.end method

.method public fireTestStarted(Lorg/junit/runner/Description;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/notification/StoppedByUserException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/junit/runner/notification/RunNotifier;->b:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$c;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/RunNotifier$c;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$h;->b()V

    return-void

    .line 3
    :cond_0
    new-instance p1, Lorg/junit/runner/notification/StoppedByUserException;

    invoke-direct {p1}, Lorg/junit/runner/notification/StoppedByUserException;-><init>()V

    throw p1
.end method

.method public pleaseStop()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/junit/runner/notification/RunNotifier;->b:Z

    return-void
.end method

.method public removeListener(Lorg/junit/runner/notification/RunListener;)V
    .locals 1

    const-string v0, "Cannot remove a null listener"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/junit/runner/notification/RunNotifier;->a:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/junit/runner/notification/RunNotifier;->d(Lorg/junit/runner/notification/RunListener;)Lorg/junit/runner/notification/RunListener;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
