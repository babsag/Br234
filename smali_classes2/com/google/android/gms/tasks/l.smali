.class final Lcom/google/android/gms/tasks/l;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/l;->a:Lcom/google/android/gms/tasks/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/l;->a:Lcom/google/android/gms/tasks/m;

    invoke-static {v0}, Lcom/google/android/gms/tasks/m;->c(Lcom/google/android/gms/tasks/m;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/l;->a:Lcom/google/android/gms/tasks/m;

    invoke-static {v1}, Lcom/google/android/gms/tasks/m;->b(Lcom/google/android/gms/tasks/m;)Lcom/google/android/gms/tasks/OnCanceledListener;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/tasks/m;->b(Lcom/google/android/gms/tasks/m;)Lcom/google/android/gms/tasks/OnCanceledListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/tasks/OnCanceledListener;->onCanceled()V

    .line 2
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
