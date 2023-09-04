.class final Lcom/google/firebase/crashlytics/internal/common/h$d0;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/report/ReportUploader$HandlingExceptionCheck;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/common/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d0"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/crashlytics/internal/common/h;


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/internal/common/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/h$d0;->a:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/common/h;Lcom/google/firebase/crashlytics/internal/common/h$k;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/h$d0;-><init>(Lcom/google/firebase/crashlytics/internal/common/h;)V

    return-void
.end method


# virtual methods
.method public isHandlingException()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/h$d0;->a:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/h;->m0()Z

    move-result v0

    return v0
.end method
