.class final Lcom/google/android/gms/measurement/internal/p6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Z

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/zzw;

.field private final synthetic d:Lcom/google/android/gms/measurement/internal/zzn;

.field private final synthetic e:Lcom/google/android/gms/measurement/internal/zzw;

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/zzio;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzio;ZZLcom/google/android/gms/measurement/internal/zzw;Lcom/google/android/gms/measurement/internal/zzn;Lcom/google/android/gms/measurement/internal/zzw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/p6;->f:Lcom/google/android/gms/measurement/internal/zzio;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/p6;->a:Z

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/p6;->b:Z

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/p6;->c:Lcom/google/android/gms/measurement/internal/zzw;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/p6;->d:Lcom/google/android/gms/measurement/internal/zzn;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/p6;->e:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p6;->f:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzd(Lcom/google/android/gms/measurement/internal/zzio;)Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p6;->f:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send conditional user property to service"

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/p6;->a:Z

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/p6;->f:Lcom/google/android/gms/measurement/internal/zzio;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/p6;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/p6;->c:Lcom/google/android/gms/measurement/internal/zzw;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/p6;->d:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzio;->zza(Lcom/google/android/gms/measurement/internal/zzej;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_1

    .line 7
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/p6;->e:Lcom/google/android/gms/measurement/internal/zzw;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/p6;->c:Lcom/google/android/gms/measurement/internal/zzw;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/p6;->d:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Lcom/google/android/gms/measurement/internal/zzw;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/p6;->c:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Lcom/google/android/gms/measurement/internal/zzw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/p6;->f:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    const-string v2, "Failed to send conditional user property to the service"

    .line 12
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p6;->f:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zze(Lcom/google/android/gms/measurement/internal/zzio;)V

    return-void
.end method
