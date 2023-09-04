.class public final Lcom/google/android/gms/measurement/internal/zzju;
.super Lcom/google/android/gms/measurement/internal/v3;
.source "com.google.android.gms:play-services-measurement-impl@@17.6.0"


# instance fields
.field protected final zza:Lcom/google/android/gms/measurement/internal/j7;

.field protected final zzb:Lcom/google/android/gms/measurement/internal/h7;

.field private zzc:Landroid/os/Handler;

.field private final zzd:Lcom/google/android/gms/measurement/internal/f7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfv;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/v3;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/j7;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/j7;-><init>(Lcom/google/android/gms/measurement/internal/zzju;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/j7;

    .line 3
    new-instance p1, Lcom/google/android/gms/measurement/internal/h7;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/h7;-><init>(Lcom/google/android/gms/measurement/internal/zzju;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzb:Lcom/google/android/gms/measurement/internal/h7;

    .line 4
    new-instance p1, Lcom/google/android/gms/measurement/internal/f7;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/f7;-><init>(Lcom/google/android/gms/measurement/internal/zzju;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzd:Lcom/google/android/gms/measurement/internal/f7;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzju;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzju;->zzaa()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzju;J)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzju;->zzb(J)V

    return-void
.end method

.method private final zzaa()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzc:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzq;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzq;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzc:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzju;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzc:Landroid/os/Handler;

    return-object p0
.end method

.method private final zzb(J)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzju;->zzaa()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity resumed, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/k4;->zzs()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzbu:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/k4;->zzs()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzh()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/k4;->zzr()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/m3;->v:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzff;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzb:Lcom/google/android/gms/measurement/internal/h7;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/h7;->b(J)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzd:Lcom/google/android/gms/measurement/internal/f7;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f7;->a()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzd:Lcom/google/android/gms/measurement/internal/f7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f7;->a()V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/k4;->zzs()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzh()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzb:Lcom/google/android/gms/measurement/internal/h7;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/h7;->b(J)V

    .line 12
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/j7;

    .line 13
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/j7;->a:Lcom/google/android/gms/measurement/internal/zzju;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 14
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/j7;->a:Lcom/google/android/gms/measurement/internal/zzju;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/k4;->zzy:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzaa()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 15
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/j7;->a:Lcom/google/android/gms/measurement/internal/zzju;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/k4;->zzs()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzat;->zzbu:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 16
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/j7;->a:Lcom/google/android/gms/measurement/internal/zzju;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/k4;->zzr()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/m3;->v:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzff;->zza(Z)V

    .line 17
    :cond_4
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/j7;->a:Lcom/google/android/gms/measurement/internal/zzju;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/k4;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/j7;->b(JZ)V

    :cond_5
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzju;J)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzju;->zzc(J)V

    return-void
.end method

.method private final zzc(J)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzju;->zzaa()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity paused, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzd:Lcom/google/android/gms/measurement/internal/f7;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/f7;->b(J)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/k4;->zzs()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzh()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzb:Lcom/google/android/gms/measurement/internal/h7;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/h7;->f(J)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/j7;

    .line 8
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/j7;->a:Lcom/google/android/gms/measurement/internal/zzju;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/k4;->zzs()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzat;->zzbu:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 9
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/j7;->a:Lcom/google/android/gms/measurement/internal/zzju;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/k4;->zzr()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/m3;->v:Lcom/google/android/gms/measurement/internal/zzff;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzff;->zza(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method final zza(J)J
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzb:Lcom/google/android/gms/measurement/internal/h7;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/h7;->g(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final bridge synthetic zza()V
    .locals 0

    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/s1;->zza()V

    return-void
.end method

.method public final zza(ZZJ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzb:Lcom/google/android/gms/measurement/internal/h7;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/h7;->d(ZZJ)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzb()V
    .locals 0

    .line 18
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/s1;->zzb()V

    return-void
.end method

.method public final bridge synthetic zzc()V
    .locals 0

    .line 10
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/s1;->zzc()V

    return-void
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/measurement/internal/zza;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/s1;->zzd()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zzgy;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/s1;->zze()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzek;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/s1;->zzf()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzio;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/s1;->zzg()Lcom/google/android/gms/measurement/internal/zzio;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzij;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/s1;->zzh()Lcom/google/android/gms/measurement/internal/zzij;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzen;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/s1;->zzi()Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzju;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/s1;->zzj()Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzal;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/k4;->zzk()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/k4;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/k4;->zzm()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Lcom/google/android/gms/measurement/internal/zzep;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/k4;->zzn()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzkw;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/k4;->zzo()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzfo;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/k4;->zzp()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzer;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/m3;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/k4;->zzr()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzy;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/k4;->zzs()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzx;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/k4;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method protected final zzy()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
