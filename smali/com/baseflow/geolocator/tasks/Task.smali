.class public abstract Lcom/baseflow/geolocator/tasks/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TOptions:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mTaskContext:Lcom/baseflow/geolocator/tasks/TaskContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baseflow/geolocator/tasks/TaskContext<",
            "TTOptions;>;"
        }
    .end annotation
.end field

.field private final mTaskID:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/baseflow/geolocator/tasks/TaskContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baseflow/geolocator/tasks/TaskContext<",
            "TTOptions;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/baseflow/geolocator/tasks/Task;->mTaskID:Ljava/util/UUID;

    .line 3
    iput-object p1, p0, Lcom/baseflow/geolocator/tasks/Task;->mTaskContext:Lcom/baseflow/geolocator/tasks/TaskContext;

    return-void
.end method


# virtual methods
.method getTaskContext()Lcom/baseflow/geolocator/tasks/TaskContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/baseflow/geolocator/tasks/TaskContext<",
            "TTOptions;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/tasks/Task;->mTaskContext:Lcom/baseflow/geolocator/tasks/TaskContext;

    return-object v0
.end method

.method public getTaskID()Ljava/util/UUID;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/tasks/Task;->mTaskID:Ljava/util/UUID;

    return-object v0
.end method

.method public abstract startTask()V
.end method

.method public stopTask()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/baseflow/geolocator/tasks/Task;->getTaskContext()Lcom/baseflow/geolocator/tasks/TaskContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baseflow/geolocator/tasks/TaskContext;->getCompletionListener()Lcom/baseflow/geolocator/OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/baseflow/geolocator/tasks/Task;->getTaskID()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baseflow/geolocator/OnCompletionListener;->onCompletion(Ljava/util/UUID;)V

    :cond_0
    return-void
.end method
