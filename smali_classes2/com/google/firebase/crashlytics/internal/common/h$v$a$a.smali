.class Lcom/google/firebase/crashlytics/internal/common/h$v$a$a;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/h$v$a;->a()Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/SuccessContinuation<",
        "Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lcom/google/firebase/crashlytics/internal/common/h$v$a;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/h$v$a;Ljava/util/List;ZLjava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a$a;->d:Lcom/google/firebase/crashlytics/internal/common/h$v$a;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a$a;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a$a;->b:Z

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a$a;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .param p1    # Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;",
            ")",
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

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    const-string v1, "Received null app settings, cannot send reports during app startup."

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/crashlytics/internal/report/model/Report;

    .line 5
    invoke-interface {v2}, Lcom/google/firebase/crashlytics/internal/report/model/Report;->getType()Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;->JAVA:Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

    if-ne v3, v4, :cond_1

    .line 6
    iget-object v3, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->organizationId:Ljava/lang/String;

    .line 7
    invoke-interface {v2}, Lcom/google/firebase/crashlytics/internal/report/model/Report;->getFile()Ljava/io/File;

    move-result-object v2

    .line 8
    invoke-static {v3, v2}, Lcom/google/firebase/crashlytics/internal/common/h;->i(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a$a;->d:Lcom/google/firebase/crashlytics/internal/common/h$v$a;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/h$v$a;->b:Lcom/google/firebase/crashlytics/internal/common/h$v;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/h$v;->c:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/h;->f(Lcom/google/firebase/crashlytics/internal/common/h;)Lcom/google/android/gms/tasks/Task;

    .line 10
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a$a;->d:Lcom/google/firebase/crashlytics/internal/common/h$v$a;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/h$v$a;->b:Lcom/google/firebase/crashlytics/internal/common/h$v;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/h$v;->c:Lcom/google/firebase/crashlytics/internal/common/h;

    .line 11
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/h;->j(Lcom/google/firebase/crashlytics/internal/common/h;)Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Provider;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Provider;->createReportUploader(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lcom/google/firebase/crashlytics/internal/report/ReportUploader;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a$a;->a:Ljava/util/List;

    iget-boolean v3, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a$a;->b:Z

    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a$a;->d:Lcom/google/firebase/crashlytics/internal/common/h$v$a;

    iget-object v4, v4, Lcom/google/firebase/crashlytics/internal/common/h$v$a;->b:Lcom/google/firebase/crashlytics/internal/common/h$v;

    iget v4, v4, Lcom/google/firebase/crashlytics/internal/common/h$v;->b:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->uploadReportsAsync(Ljava/util/List;ZF)V

    .line 13
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a$a;->d:Lcom/google/firebase/crashlytics/internal/common/h$v$a;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/h$v$a;->b:Lcom/google/firebase/crashlytics/internal/common/h$v;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/h$v;->c:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/h;->w(Lcom/google/firebase/crashlytics/internal/common/h;)Lcom/google/firebase/crashlytics/internal/common/s;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a$a;->c:Ljava/util/concurrent/Executor;

    .line 14
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;->a(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    move-result-object p1

    .line 15
    invoke-virtual {v1, v2, p1}, Lcom/google/firebase/crashlytics/internal/common/s;->n(Ljava/util/concurrent/Executor;Lcom/google/firebase/crashlytics/internal/common/DataTransportState;)Lcom/google/android/gms/tasks/Task;

    .line 16
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/h$v$a$a;->d:Lcom/google/firebase/crashlytics/internal/common/h$v$a;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/h$v$a;->b:Lcom/google/firebase/crashlytics/internal/common/h$v;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/h$v;->c:Lcom/google/firebase/crashlytics/internal/common/h;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/h;->F:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/h$v$a$a;->a(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
