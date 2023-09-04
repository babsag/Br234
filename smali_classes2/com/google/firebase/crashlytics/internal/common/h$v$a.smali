.class Lcom/google/firebase/crashlytics/internal/common/h$v$a;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/h$v;->a(Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/tasks/Task<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Boolean;

.field final synthetic b:Lcom/google/firebase/crashlytics/internal/common/h$v;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/h$v;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a;->b:Lcom/google/firebase/crashlytics/internal/common/h$v;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a;->b:Lcom/google/firebase/crashlytics/internal/common/h$v;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/h$v;->c:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/h;->g(Lcom/google/firebase/crashlytics/internal/common/h;)Lcom/google/firebase/crashlytics/internal/report/ReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/report/ReportManager;->findReports()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v2, "Reports are being deleted."

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a;->b:Lcom/google/firebase/crashlytics/internal/common/h$v;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/h$v;->c:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/h;->o0()[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/h;->h([Ljava/io/File;)V

    .line 5
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a;->b:Lcom/google/firebase/crashlytics/internal/common/h$v;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/h$v;->c:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/h;->g(Lcom/google/firebase/crashlytics/internal/common/h;)Lcom/google/firebase/crashlytics/internal/report/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/report/ReportManager;->deleteReports(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a;->b:Lcom/google/firebase/crashlytics/internal/common/h$v;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/h$v;->c:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/h;->w(Lcom/google/firebase/crashlytics/internal/common/h;)Lcom/google/firebase/crashlytics/internal/common/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/s;->m()V

    .line 7
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a;->b:Lcom/google/firebase/crashlytics/internal/common/h$v;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/h$v;->c:Lcom/google/firebase/crashlytics/internal/common/h;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/h;->F:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v2, "Reports are being sent."

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 11
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a;->b:Lcom/google/firebase/crashlytics/internal/common/h$v;

    iget-object v2, v2, Lcom/google/firebase/crashlytics/internal/common/h$v;->c:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/h;->c(Lcom/google/firebase/crashlytics/internal/common/h;)Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->grantDataCollectionPermission(Z)V

    .line 12
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a;->b:Lcom/google/firebase/crashlytics/internal/common/h$v;

    iget-object v2, v2, Lcom/google/firebase/crashlytics/internal/common/h$v;->c:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/h;->d(Lcom/google/firebase/crashlytics/internal/common/h;)Lcom/google/firebase/crashlytics/internal/common/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/common/f;->c()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a;->b:Lcom/google/firebase/crashlytics/internal/common/h$v;

    iget-object v3, v3, Lcom/google/firebase/crashlytics/internal/common/h$v;->a:Lcom/google/android/gms/tasks/Task;

    new-instance v4, Lcom/google/firebase/crashlytics/internal/common/h$v$a$a;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/h$v$a$a;-><init>(Lcom/google/firebase/crashlytics/internal/common/h$v$a;Ljava/util/List;ZLjava/util/concurrent/Executor;)V

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/h$v$a;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
