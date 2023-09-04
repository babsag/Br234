.class final Lcom/google/android/gms/measurement/internal/t3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzn;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/zzfw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfw;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/t3;->b:Lcom/google/android/gms/measurement/internal/zzfw;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/t3;->a:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->b:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Lcom/google/android/gms/measurement/internal/zzfw;)Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzr()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->b:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Lcom/google/android/gms/measurement/internal/zzfw;)Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/t3;->a:Lcom/google/android/gms/measurement/internal/zzn;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzp()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()V

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzki;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/i3;

    return-void
.end method
