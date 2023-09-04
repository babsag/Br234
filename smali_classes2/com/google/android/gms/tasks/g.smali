.class final Lcom/google/android/gms/tasks/g;
.super Lcom/google/android/gms/tasks/CancellationToken;
.source "com.google.android.gms:play-services-tasks@@18.0.2"


# instance fields
.field private final a:Lcom/google/android/gms/tasks/c0;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tasks/CancellationToken;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/c0;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/c0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/g;->a:Lcom/google/android/gms/tasks/c0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/g;->a:Lcom/google/android/gms/tasks/c0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/c0;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public final isCancellationRequested()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/g;->a:Lcom/google/android/gms/tasks/c0;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/c0;->isComplete()Z

    move-result v0

    return v0
.end method

.method public final onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;
    .locals 2
    .param p1    # Lcom/google/android/gms/tasks/OnTokenCanceledListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/g;->a:Lcom/google/android/gms/tasks/c0;

    new-instance v1, Lcom/google/android/gms/tasks/a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/a;-><init>(Lcom/google/android/gms/tasks/g;Lcom/google/android/gms/tasks/OnTokenCanceledListener;)V

    sget-object p1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/tasks/c0;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-object p0
.end method
