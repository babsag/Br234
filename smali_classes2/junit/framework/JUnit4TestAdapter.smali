.class public Ljunit/framework/JUnit4TestAdapter;
.super Ljava/lang/Object;
.source "JUnit4TestAdapter.java"

# interfaces
.implements Ljunit/framework/Test;
.implements Lorg/junit/runner/manipulation/Filterable;
.implements Lorg/junit/runner/manipulation/Sortable;
.implements Lorg/junit/runner/Describable;


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lorg/junit/runner/Runner;

.field private final c:Ljunit/framework/JUnit4TestAdapterCache;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljunit/framework/JUnit4TestAdapterCache;->getDefault()Ljunit/framework/JUnit4TestAdapterCache;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljunit/framework/JUnit4TestAdapter;-><init>(Ljava/lang/Class;Ljunit/framework/JUnit4TestAdapterCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljunit/framework/JUnit4TestAdapterCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljunit/framework/JUnit4TestAdapterCache;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Ljunit/framework/JUnit4TestAdapter;->c:Ljunit/framework/JUnit4TestAdapterCache;

    .line 4
    iput-object p1, p0, Ljunit/framework/JUnit4TestAdapter;->a:Ljava/lang/Class;

    .line 5
    invoke-static {p1}, Lorg/junit/runner/Request;->classWithoutSuiteMethod(Ljava/lang/Class;)Lorg/junit/runner/Request;

    move-result-object p1

    invoke-virtual {p1}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    move-result-object p1

    iput-object p1, p0, Ljunit/framework/JUnit4TestAdapter;->b:Lorg/junit/runner/Runner;

    return-void
.end method

.method private a(Lorg/junit/runner/Description;)Z
    .locals 1

    .line 1
    const-class v0, Lorg/junit/Ignore;

    invoke-virtual {p1, v0}, Lorg/junit/runner/Description;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lorg/junit/runner/Description;)Lorg/junit/runner/Description;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Ljunit/framework/JUnit4TestAdapter;->a(Lorg/junit/runner/Description;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lorg/junit/runner/Description;->EMPTY:Lorg/junit/runner/Description;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/junit/runner/Description;->childlessCopy()Lorg/junit/runner/Description;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/Description;

    .line 5
    invoke-direct {p0, v1}, Ljunit/framework/JUnit4TestAdapter;->b(Lorg/junit/runner/Description;)Lorg/junit/runner/Description;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lorg/junit/runner/Description;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Lorg/junit/runner/Description;->addChild(Lorg/junit/runner/Description;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public countTestCases()I
    .locals 1

    .line 1
    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapter;->b:Lorg/junit/runner/Runner;

    invoke-virtual {v0}, Lorg/junit/runner/Runner;->testCount()I

    move-result v0

    return v0
.end method

.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapter;->b:Lorg/junit/runner/Runner;

    invoke-virtual {p1, v0}, Lorg/junit/runner/manipulation/Filter;->apply(Ljava/lang/Object;)V

    return-void
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 1

    .line 1
    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapter;->b:Lorg/junit/runner/Runner;

    invoke-virtual {v0}, Lorg/junit/runner/Runner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Ljunit/framework/JUnit4TestAdapter;->b(Lorg/junit/runner/Description;)Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method public getTestClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapter;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public getTests()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapter;->c:Ljunit/framework/JUnit4TestAdapterCache;

    invoke-virtual {p0}, Ljunit/framework/JUnit4TestAdapter;->getDescription()Lorg/junit/runner/Description;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljunit/framework/JUnit4TestAdapterCache;->asTestList(Lorg/junit/runner/Description;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public run(Ljunit/framework/TestResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapter;->b:Lorg/junit/runner/Runner;

    iget-object v1, p0, Ljunit/framework/JUnit4TestAdapter;->c:Ljunit/framework/JUnit4TestAdapterCache;

    invoke-virtual {v1, p1, p0}, Ljunit/framework/JUnit4TestAdapterCache;->getNotifier(Ljunit/framework/TestResult;Ljunit/framework/JUnit4TestAdapter;)Lorg/junit/runner/notification/RunNotifier;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/junit/runner/Runner;->run(Lorg/junit/runner/notification/RunNotifier;)V

    return-void
.end method

.method public sort(Lorg/junit/runner/manipulation/Sorter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapter;->b:Lorg/junit/runner/Runner;

    invoke-virtual {p1, v0}, Lorg/junit/runner/manipulation/Sorter;->apply(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapter;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
