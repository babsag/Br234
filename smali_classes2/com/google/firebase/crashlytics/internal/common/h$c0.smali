.class final Lcom/google/firebase/crashlytics/internal/common/h$c0;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/report/ReportUploader$ReportFilesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/common/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c0"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/crashlytics/internal/common/h;


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/internal/common/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/h$c0;->a:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/common/h;Lcom/google/firebase/crashlytics/internal/common/h$k;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/h$c0;-><init>(Lcom/google/firebase/crashlytics/internal/common/h;)V

    return-void
.end method


# virtual methods
.method public getCompleteSessionFiles()[Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/h$c0;->a:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/h;->p0()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getNativeReportFiles()[Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/h$c0;->a:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/h;->s0()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
