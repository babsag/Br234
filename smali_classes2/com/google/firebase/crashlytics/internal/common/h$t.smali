.class Lcom/google/firebase/crashlytics/internal/common/h$t;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/h;->l0(Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;Ljava/lang/Thread;Ljava/lang/Throwable;)V
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
.field final synthetic a:Ljava/util/Date;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Ljava/lang/Thread;

.field final synthetic d:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;

.field final synthetic e:Lcom/google/firebase/crashlytics/internal/common/h;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/h;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->e:Lcom/google/firebase/crashlytics/internal/common/h;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->b:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->c:Ljava/lang/Thread;

    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->d:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/Task;
    .locals 10
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
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->a:Ljava/util/Date;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/h;->s(Ljava/util/Date;)J

    move-result-wide v7

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->e:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/h;->t(Lcom/google/firebase/crashlytics/internal/common/h;)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    const-string v1, "Tried to write a fatal exception while no session was open."

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;)V

    .line 5
    invoke-static {v9}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->e:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/h;->u(Lcom/google/firebase/crashlytics/internal/common/h;)Lcom/google/firebase/crashlytics/internal/common/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/j;->a()Z

    .line 7
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->e:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/h;->w(Lcom/google/firebase/crashlytics/internal/common/h;)Lcom/google/firebase/crashlytics/internal/common/s;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->b:Ljava/lang/Throwable;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->c:Ljava/lang/Thread;

    .line 8
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/h;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-wide v5, v7

    .line 9
    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/crashlytics/internal/common/s;->j(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V

    .line 10
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->e:Lcom/google/firebase/crashlytics/internal/common/h;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->c:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->b:Ljava/lang/Throwable;

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lcom/google/firebase/crashlytics/internal/common/h;->x(Lcom/google/firebase/crashlytics/internal/common/h;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;J)V

    .line 11
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->e:Lcom/google/firebase/crashlytics/internal/common/h;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->a:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/h;->y(Lcom/google/firebase/crashlytics/internal/common/h;J)V

    .line 12
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->d:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;

    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;->getSettings()Lcom/google/firebase/crashlytics/internal/settings/model/Settings;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/settings/model/Settings;->getSessionData()Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    move-result-object v1

    iget v1, v1, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;->maxCustomExceptionEvents:I

    .line 14
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/settings/model/Settings;->getSessionData()Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    move-result-object v0

    iget v0, v0, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;->maxCompleteSessionsCount:I

    .line 15
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->e:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/internal/common/h;->N(I)V

    .line 16
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->e:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/h;->b(Lcom/google/firebase/crashlytics/internal/common/h;)V

    .line 17
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->e:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/h;->J0(I)V

    .line 18
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->e:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/h;->c(Lcom/google/firebase/crashlytics/internal/common/h;)Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->isAutomaticDataCollectionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    invoke-static {v9}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->e:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/h;->d(Lcom/google/firebase/crashlytics/internal/common/h;)Lcom/google/firebase/crashlytics/internal/common/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/f;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/h$t;->d:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;

    .line 22
    invoke-interface {v1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;->getAppSettings()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/h$t$a;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/crashlytics/internal/common/h$t$a;-><init>(Lcom/google/firebase/crashlytics/internal/common/h$t;Ljava/util/concurrent/Executor;)V

    .line 23
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

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
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/h$t;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
