.class final Lcom/google/android/gms/measurement/internal/j3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/k3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/k3;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j3;->b:Lcom/google/android/gms/measurement/internal/k3;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/j3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j3;->b:Lcom/google/android/gms/measurement/internal/k3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/k3;->a(Lcom/google/android/gms/measurement/internal/k3;)Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/j3;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Z)V

    return-void
.end method
