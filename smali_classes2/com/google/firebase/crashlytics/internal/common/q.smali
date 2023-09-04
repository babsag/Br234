.class final synthetic Lcom/google/firebase/crashlytics/internal/common/q;
.super Ljava/lang/Object;
.source "SessionReportingCoordinator.java"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/internal/common/s;


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/internal/common/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/q;->a:Lcom/google/firebase/crashlytics/internal/common/s;

    return-void
.end method

.method public static a(Lcom/google/firebase/crashlytics/internal/common/s;)Lcom/google/android/gms/tasks/Continuation;
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/q;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/common/q;-><init>(Lcom/google/firebase/crashlytics/internal/common/s;)V

    return-object v0
.end method


# virtual methods
.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/q;->a:Lcom/google/firebase/crashlytics/internal/common/s;

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/s;->a(Lcom/google/firebase/crashlytics/internal/common/s;Lcom/google/android/gms/tasks/Task;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
