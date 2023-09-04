.class final Lcom/google/android/gms/common/moduleinstall/internal/b;
.super Lcom/google/android/gms/common/moduleinstall/internal/zag;
.source "com.google.android.gms:play-services-base@@18.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/ListenerHolder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/moduleinstall/internal/zag;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/moduleinstall/internal/b;->a:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-void
.end method


# virtual methods
.method public final zab(Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/moduleinstall/internal/b;->a:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    new-instance v1, Lcom/google/android/gms/common/moduleinstall/internal/a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/moduleinstall/internal/a;-><init>(Lcom/google/android/gms/common/moduleinstall/internal/b;Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method
