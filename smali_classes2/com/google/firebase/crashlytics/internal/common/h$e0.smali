.class final Lcom/google/firebase/crashlytics/internal/common/h$e0;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/common/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e0"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/firebase/crashlytics/internal/report/model/Report;

.field private final c:Lcom/google/firebase/crashlytics/internal/report/ReportUploader;

.field private final d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/report/model/Report;Lcom/google/firebase/crashlytics/internal/report/ReportUploader;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/h$e0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/h$e0;->b:Lcom/google/firebase/crashlytics/internal/report/model/Report;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/h$e0;->c:Lcom/google/firebase/crashlytics/internal/report/ReportUploader;

    .line 5
    iput-boolean p4, p0, Lcom/google/firebase/crashlytics/internal/common/h$e0;->d:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/h$e0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->canTryConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    const-string v1, "Attempting to send crash report at time of crash..."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/h$e0;->c:Lcom/google/firebase/crashlytics/internal/report/ReportUploader;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/h$e0;->b:Lcom/google/firebase/crashlytics/internal/report/model/Report;

    iget-boolean v2, p0, Lcom/google/firebase/crashlytics/internal/common/h$e0;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->uploadReport(Lcom/google/firebase/crashlytics/internal/report/model/Report;Z)Z

    return-void
.end method
