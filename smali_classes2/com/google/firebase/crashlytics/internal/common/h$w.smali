.class Lcom/google/firebase/crashlytics/internal/common/h$w;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/h;->I()Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/crashlytics/internal/common/h;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/h$w;->a:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createReportUploader(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lcom/google/firebase/crashlytics/internal/report/ReportUploader;
    .locals 9
    .param p1    # Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->reportsUrl:Ljava/lang/String;

    .line 2
    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->ndkReportsUrl:Ljava/lang/String;

    .line 3
    iget-object v3, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->organizationId:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/h$w;->a:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-static {v2, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/h;->k(Lcom/google/firebase/crashlytics/internal/common/h;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/report/network/CreateReportSpiCall;

    move-result-object v7

    .line 5
    new-instance v0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/h$w;->a:Lcom/google/firebase/crashlytics/internal/common/h;

    .line 6
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/h;->l(Lcom/google/firebase/crashlytics/internal/common/h;)Lcom/google/firebase/crashlytics/internal/common/a;

    move-result-object v1

    iget-object v4, v1, Lcom/google/firebase/crashlytics/internal/common/a;->a:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;->a(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    move-result-object v5

    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/h$w;->a:Lcom/google/firebase/crashlytics/internal/common/h;

    .line 8
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/h;->g(Lcom/google/firebase/crashlytics/internal/common/h;)Lcom/google/firebase/crashlytics/internal/report/ReportManager;

    move-result-object v6

    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/h$w;->a:Lcom/google/firebase/crashlytics/internal/common/h;

    .line 9
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/h;->m(Lcom/google/firebase/crashlytics/internal/common/h;)Lcom/google/firebase/crashlytics/internal/report/ReportUploader$HandlingExceptionCheck;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/DataTransportState;Lcom/google/firebase/crashlytics/internal/report/ReportManager;Lcom/google/firebase/crashlytics/internal/report/network/CreateReportSpiCall;Lcom/google/firebase/crashlytics/internal/report/ReportUploader$HandlingExceptionCheck;)V

    return-object v0
.end method
