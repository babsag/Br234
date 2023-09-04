.class public Lcom/google/android/gms/measurement/internal/zzfv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/m4;


# static fields
.field private static volatile zzb:Lcom/google/android/gms/measurement/internal/zzfv;


# instance fields
.field final zza:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzaa:Ljava/lang/Boolean;

.field private zzab:J

.field private volatile zzac:Ljava/lang/Boolean;

.field private zzad:Ljava/lang/Boolean;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzae:Ljava/lang/Boolean;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private volatile zzaf:Z

.field private zzag:I

.field private zzah:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/measurement/internal/zzx;

.field private final zzi:Lcom/google/android/gms/measurement/internal/zzy;

.field private final zzj:Lcom/google/android/gms/measurement/internal/m3;

.field private final zzk:Lcom/google/android/gms/measurement/internal/zzer;

.field private final zzl:Lcom/google/android/gms/measurement/internal/zzfo;

.field private final zzm:Lcom/google/android/gms/measurement/internal/zzju;

.field private final zzn:Lcom/google/android/gms/measurement/internal/zzkw;

.field private final zzo:Lcom/google/android/gms/measurement/internal/zzep;

.field private final zzp:Lcom/google/android/gms/common/util/Clock;

.field private final zzq:Lcom/google/android/gms/measurement/internal/zzij;

.field private final zzr:Lcom/google/android/gms/measurement/internal/zzgy;

.field private final zzs:Lcom/google/android/gms/measurement/internal/zza;

.field private final zzt:Lcom/google/android/gms/measurement/internal/zzia;

.field private zzu:Lcom/google/android/gms/measurement/internal/zzen;

.field private zzv:Lcom/google/android/gms/measurement/internal/zzio;

.field private zzw:Lcom/google/android/gms/measurement/internal/zzal;

.field private zzx:Lcom/google/android/gms/measurement/internal/zzek;

.field private zzy:Lcom/google/android/gms/measurement/internal/zzfi;

.field private zzz:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzgz;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzz:Z

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzah:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzgz;->zza:Landroid/content/Context;

    .line 6
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzx;

    invoke-direct {v2, v1}, Lcom/google/android/gms/measurement/internal/zzx;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzh:Lcom/google/android/gms/measurement/internal/zzx;

    .line 8
    sput-object v2, Lcom/google/android/gms/measurement/internal/a3;->a:Lcom/google/android/gms/measurement/internal/zzx;

    .line 9
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzgz;->zza:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzc:Landroid/content/Context;

    .line 10
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzgz;->zzb:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzd:Ljava/lang/String;

    .line 11
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzgz;->zzc:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zze:Ljava/lang/String;

    .line 12
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzgz;->zzd:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzf:Ljava/lang/String;

    .line 13
    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/zzgz;->zzh:Z

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzg:Z

    .line 14
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzgz;->zze:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzac:Ljava/lang/Boolean;

    const/4 v2, 0x1

    .line 15
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaf:Z

    .line 16
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzgz;->zzg:Lcom/google/android/gms/internal/measurement/zzae;

    if-eqz v3, :cond_1

    .line 17
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    const-string v5, "measurementEnabled"

    .line 18
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 19
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 20
    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzad:Ljava/lang/Boolean;

    .line 21
    :cond_0
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    const-string v4, "measurementDeactivated"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 22
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 23
    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzae:Ljava/lang/Boolean;

    .line 24
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzdh;->zza(Landroid/content/Context;)V

    .line 25
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    .line 26
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 27
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzgz;->zzi:Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 28
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    .line 29
    :cond_2
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    :goto_0
    iput-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:J

    .line 30
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzy;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;)V

    .line 31
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 32
    new-instance v3, Lcom/google/android/gms/measurement/internal/m3;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/m3;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;)V

    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/n4;->zzab()V

    .line 34
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzj:Lcom/google/android/gms/measurement/internal/m3;

    .line 35
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzer;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzer;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;)V

    .line 36
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/n4;->zzab()V

    .line 37
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzk:Lcom/google/android/gms/measurement/internal/zzer;

    .line 38
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;)V

    .line 39
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/n4;->zzab()V

    .line 40
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzn:Lcom/google/android/gms/measurement/internal/zzkw;

    .line 41
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzep;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzep;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;)V

    .line 42
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/n4;->zzab()V

    .line 43
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzo:Lcom/google/android/gms/measurement/internal/zzep;

    .line 44
    new-instance v3, Lcom/google/android/gms/measurement/internal/zza;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zza;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;)V

    .line 45
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzs:Lcom/google/android/gms/measurement/internal/zza;

    .line 46
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzij;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzij;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;)V

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/v3;->zzw()V

    .line 48
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzq:Lcom/google/android/gms/measurement/internal/zzij;

    .line 49
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzgy;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzgy;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;)V

    .line 50
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/v3;->zzw()V

    .line 51
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzr:Lcom/google/android/gms/measurement/internal/zzgy;

    .line 52
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzju;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzju;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;)V

    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/v3;->zzw()V

    .line 54
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzm:Lcom/google/android/gms/measurement/internal/zzju;

    .line 55
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzia;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzia;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;)V

    .line 56
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/n4;->zzab()V

    .line 57
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzt:Lcom/google/android/gms/measurement/internal/zzia;

    .line 58
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzfo;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;)V

    .line 59
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/n4;->zzab()V

    .line 60
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzl:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 61
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzgz;->zzg:Lcom/google/android/gms/internal/measurement/zzae;

    if-eqz v4, :cond_3

    iget-wide v4, v4, Lcom/google/android/gms/internal/measurement/zzae;->zzb:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    const/4 v0, 0x1

    :cond_3
    xor-int/2addr v0, v2

    .line 62
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_5

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzg()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/k4;->zzm()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_6

    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/k4;->zzm()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    .line 66
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzgy;->zza:Lcom/google/android/gms/measurement/internal/o5;

    if-nez v4, :cond_4

    .line 67
    new-instance v4, Lcom/google/android/gms/measurement/internal/o5;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/google/android/gms/measurement/internal/o5;-><init>(Lcom/google/android/gms/measurement/internal/zzgy;Lcom/google/android/gms/measurement/internal/s4;)V

    iput-object v4, v1, Lcom/google/android/gms/measurement/internal/zzgy;->zza:Lcom/google/android/gms/measurement/internal/o5;

    :cond_4
    if-eqz v0, :cond_6

    .line 68
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgy;->zza:Lcom/google/android/gms/measurement/internal/o5;

    .line 69
    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 70
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgy;->zza:Lcom/google/android/gms/measurement/internal/o5;

    .line 71
    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 72
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 74
    :cond_6
    :goto_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/s3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/s3;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;Lcom/google/android/gms/measurement/internal/zzgz;)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzae;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzfv;
    .locals 11

    if-eqz p1, :cond_1

    .line 127
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzae;->zze:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzf:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 128
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/zzae;->zza:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzb:J

    iget-boolean v6, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzc:Z

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzd:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/measurement/zzae;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object p1, v0

    .line 129
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfv;->zzb:Lcom/google/android/gms/measurement/internal/zzfv;

    if-nez v0, :cond_3

    .line 132
    const-class v0, Lcom/google/android/gms/measurement/internal/zzfv;

    monitor-enter v0

    .line 133
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzfv;->zzb:Lcom/google/android/gms/measurement/internal/zzfv;

    if-nez v1, :cond_2

    .line 134
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzae;Ljava/lang/Long;)V

    .line 135
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzfv;-><init>(Lcom/google/android/gms/measurement/internal/zzgz;)V

    .line 136
    sput-object p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzb:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 137
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    .line 138
    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    const-string p2, "dataCollectionDefaultEnabled"

    .line 139
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 140
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzb:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 141
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 142
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zza(Z)V

    .line 143
    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzb:Lcom/google/android/gms/measurement/internal/zzfv;

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/k4;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzfv;Lcom/google/android/gms/measurement/internal/zzgz;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zza(Lcom/google/android/gms/measurement/internal/zzgz;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzgz;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzp()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 2
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzal;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzal;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->zzab()V

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzw:Lcom/google/android/gms/measurement/internal/zzal;

    .line 5
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzek;

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzgz;->zzf:J

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzek;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;J)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/v3;->zzw()V

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzx:Lcom/google/android/gms/measurement/internal/zzek;

    .line 8
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzen;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzen;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;)V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v3;->zzw()V

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzu:Lcom/google/android/gms/measurement/internal/zzen;

    .line 11
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzio;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzio;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v3;->zzw()V

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzv:Lcom/google/android/gms/measurement/internal/zzio;

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzn:Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n4;->zzac()V

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzj:Lcom/google/android/gms/measurement/internal/m3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n4;->zzac()V

    .line 16
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfi;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;)V

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzy:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzx:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v3;->zzx()V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zzu()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-wide/16 v1, 0x7d35

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "App measurement initialized, version"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zzu()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzaa()Ljava/lang/String;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzkw;->zze(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zzu()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzu()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    const-string v1, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    .line 29
    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zzv()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 31
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzag:I

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzah:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzag:I

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzah:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzz:Z

    return-void
.end method

.method private final zzah()Lcom/google/android/gms/measurement/internal/zzia;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzt:Lcom/google/android/gms/measurement/internal/zzia;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb(Lcom/google/android/gms/measurement/internal/n4;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzt:Lcom/google/android/gms/measurement/internal/zzia;

    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/measurement/internal/n4;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/n4;->zzz()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzb(Lcom/google/android/gms/measurement/internal/v3;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/v3;->zzu()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/measurement/internal/zzy;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    return-object v0
.end method

.method protected final zza(Lcom/google/android/gms/internal/measurement/zzae;)V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzp()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 39
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzcg:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m3;->n()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 41
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    const/16 v2, 0x28

    .line 43
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/m3;->zza(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    .line 45
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzad;->zzb(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object p1

    .line 46
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzad;->zza:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzad;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzg()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:J

    .line 48
    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Lcom/google/android/gms/measurement/internal/zzad;IJ)V

    move-object v0, p1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzg()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Lcom/google/android/gms/measurement/internal/zzad;)V

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/m3;->d:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfh;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/m3;->d:Lcom/google/android/gms/measurement/internal/zzfh;

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 53
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfh;->zza(J)V

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/m3;->i:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfh;->zza()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Persisting first open"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/m3;->i:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfh;->zza(J)V

    .line 58
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 59
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzat;->zzcc:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzg()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgy;->zzb:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzp;->zzb()V

    .line 61
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzaf()Z

    move-result p1

    if-nez p1, :cond_9

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzaa()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object p1

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzkw;->zzc(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string v0, "App is missing INTERNET permission"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 65
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzkw;->zzc(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string v0, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 67
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzc:Landroid/content/Context;

    .line 68
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result p1

    if-nez p1, :cond_8

    .line 69
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 70
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzy;->zzw()Z

    move-result p1

    if-nez p1, :cond_8

    .line 71
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzc:Landroid/content/Context;

    .line 72
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfn;->zza(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string v0, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 74
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzc:Landroid/content/Context;

    const/4 v0, 0x0

    .line 75
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Landroid/content/Context;Z)Z

    move-result p1

    if-nez p1, :cond_8

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string v0, "AppMeasurementService not registered/enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 77
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string v0, "Uploading is not possible. App measurement disabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzx()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzek;->zzab()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzx()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzek;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 80
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzx()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzek;->zzab()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m3;->h()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzx()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzac()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m3;->i()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zzu()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/m3;->k()V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzj()Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzen;->zzaa()V

    .line 89
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzv:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzag()V

    .line 90
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzv:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzae()V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/m3;->i:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:J

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfh;->zza(J)V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/m3;->k:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfj;->zza(Ljava/lang/String;)V

    .line 93
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzx()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzek;->zzab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/m3;->e(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzx()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzek;->zzac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/m3;->zzc(Ljava/lang/String;)V

    .line 95
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 96
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 97
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzcg:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/m3;->n()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzad;->zze()Z

    move-result p1

    if-nez p1, :cond_d

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/m3;->k:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfj;->zza(Ljava/lang/String;)V

    .line 100
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzg()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/m3;->k:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfj;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmu;->zzb()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 102
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 103
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzbo:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkw;->zzj()Z

    move-result p1

    if-nez p1, :cond_e

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/m3;->y:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfj;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string v1, "Remote config removed with active feature rollouts"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/m3;->y:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfj;->zza(Ljava/lang/String;)V

    .line 108
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzx()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzek;->zzab()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzx()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzek;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 110
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzaa()Z

    move-result p1

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m3;->zzy()Z

    move-result v0

    if-nez v0, :cond_10

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzf()Z

    move-result v0

    if-nez v0, :cond_10

    .line 114
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/m3;->f(Z)V

    :cond_10
    if-eqz p1, :cond_11

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzg()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzah()V

    .line 116
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzd()Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/j7;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j7;->a()V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzv()Lcom/google/android/gms/measurement/internal/zzio;

    move-result-object p1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzio;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 118
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzny;->zzb()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 119
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 120
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzat;->zzby:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzv()Lcom/google/android/gms/measurement/internal/zzio;

    move-result-object p1

    .line 122
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/m3;->B:Lcom/google/android/gms/measurement/internal/zzfe;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfe;->zza()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzio;->zza(Landroid/os/Bundle;)V

    .line 123
    :cond_12
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/m3;->s:Lcom/google/android/gms/measurement/internal/zzff;

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 125
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzax:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzff;->zza(Z)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/n4;)V
    .locals 0

    .line 146
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzag:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzag:I

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/v3;)V
    .locals 0

    .line 147
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzag:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzag:I

    return-void
.end method

.method final synthetic zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6

    const-string p1, "gclid"

    const-string p5, ""

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-eq p2, v2, :cond_0

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_0

    const/16 v2, 0x130

    if-ne p2, v2, :cond_1

    :cond_0
    if-nez p3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 148
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 150
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "Network Request for Deferred Deep Link failed. response, exception"

    .line 151
    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/m3;->w:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzff;->zza(Z)V

    .line 153
    array-length p2, p4

    if-nez p2, :cond_3

    .line 154
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zzv()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string p2, "Deferred Deep Link response empty."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    return-void

    .line 155
    :cond_3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p4}, Ljava/lang/String;-><init>([B)V

    .line 156
    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "deeplink"

    .line 157
    invoke-virtual {p3, p2, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 158
    invoke-virtual {p3, p1, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "timestamp"

    const-wide/16 v2, 0x0

    .line 159
    invoke-virtual {p3, p5, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 160
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 161
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zzv()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string p2, "Deferred Deep Link is empty."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    return-void

    .line 162
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object p3

    .line 163
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_5

    .line 164
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/k4;->zzm()Landroid/content/Context;

    move-result-object p3

    .line 165
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    new-instance p5, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    .line 166
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p5, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p3, p5, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 167
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_6

    .line 168
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string p3, "Deferred Deep Link validation failed. gclid, deep link"

    .line 170
    invoke-virtual {p1, p3, p4, p2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 171
    :cond_6
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 172
    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_cis"

    const-string p4, "ddp"

    .line 173
    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzr:Lcom/google/android/gms/measurement/internal/zzgy;

    const-string p4, "auto"

    const-string p5, "_cmp"

    invoke-virtual {p1, p4, p5, p3}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object p1

    .line 176
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 177
    invoke-virtual {p1, p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Ljava/lang/String;D)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 178
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.google.analytics.action.DEEPLINK_ACTION"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/k4;->zzm()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-void

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    const-string p3, "Failed to parse the Deferred Deep Link response. exception"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Z)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 145
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzac:Ljava/lang/Boolean;

    return-void
.end method

.method public final zzaa()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzab()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzab()I
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzp()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzae:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 8
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzcg:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzac()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    return v0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m3;->l()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x3

    return v0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    const-string v2, "firebase_analytics_collection_enabled"

    .line 13
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zzf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x4

    return v0

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzad:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x5

    return v0

    .line 17
    :cond_8
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleServices;->isMeasurementExplicitlyDisabled()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    return v0

    .line 18
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 19
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzat;->zzar:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzac:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzac:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x7

    return v0

    :cond_b
    return v1
.end method

.method public final zzac()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzp()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaf:Z

    return v0
.end method

.method final zzad()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzae()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzah:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method protected final zzaf()Z
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzz:Z

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzp()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaa:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzab:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzab:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzab:J

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkw;->zzc(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkw;->zzc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzc:Landroid/content/Context;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzw()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzc:Landroid/content/Context;

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfn;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzc:Landroid/content/Context;

    .line 18
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaa:Ljava/lang/Boolean;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzx()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzek;->zzab()Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzx()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzek;->zzac()Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzx()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzad()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzx()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 27
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaa:Ljava/lang/Boolean;

    .line 28
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaa:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 29
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzag()V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzp()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzah()Lcom/google/android/gms/measurement/internal/zzia;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb(Lcom/google/android/gms/measurement/internal/n4;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzx()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzaa()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzi:Lcom/google/android/gms/measurement/internal/zzy;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzy;->zzg()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzah()Lcom/google/android/gms/measurement/internal/zzia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzia;->zzf()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    const-string v1, "Network is not available for Deferred Deep Link request. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v2

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzx()Lcom/google/android/gms/measurement/internal/zzek;

    const-wide/16 v3, 0x7d35

    .line 13
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/m3;->x:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfh;->zza()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    move-object v1, v2

    move-wide v2, v3

    move-object v4, v0

    .line 15
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(JLjava/lang/String;Ljava/lang/String;J)Ljava/net/URL;

    move-result-object v4

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzah()Lcom/google/android/gms/measurement/internal/zzia;

    move-result-object v2

    new-instance v7, Lcom/google/android/gms/measurement/internal/r3;

    invoke-direct {v7, p0}, Lcom/google/android/gms/measurement/internal/r3;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;)V

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n4;->zzaa()V

    .line 19
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/k4;->zzp()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/measurement/internal/q5;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/q5;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/r5;)V

    .line 22
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzfo;->zzc(Ljava/lang/Runnable;)V

    return-void

    .line 23
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzv()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    const-string v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/measurement/internal/m3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzj:Lcom/google/android/gms/measurement/internal/m3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zza(Lcom/google/android/gms/measurement/internal/k4;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzj:Lcom/google/android/gms/measurement/internal/m3;

    return-object v0
.end method

.method public final zzb(Z)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzp()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 10
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaf:Z

    return-void
.end method

.method public final zzc()Lcom/google/android/gms/measurement/internal/zzer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzk:Lcom/google/android/gms/measurement/internal/zzer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->zzz()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzk:Lcom/google/android/gms/measurement/internal/zzer;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzju;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzm:Lcom/google/android/gms/measurement/internal/zzju;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb(Lcom/google/android/gms/measurement/internal/v3;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzm:Lcom/google/android/gms/measurement/internal/zzju;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/measurement/internal/zzfi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzy:Lcom/google/android/gms/measurement/internal/zzfi;

    return-object v0
.end method

.method final zzf()Lcom/google/android/gms/measurement/internal/zzfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzl:Lcom/google/android/gms/measurement/internal/zzfo;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/measurement/internal/zzgy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzr:Lcom/google/android/gms/measurement/internal/zzgy;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb(Lcom/google/android/gms/measurement/internal/v3;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzr:Lcom/google/android/gms/measurement/internal/zzgy;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzkw;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzn:Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zza(Lcom/google/android/gms/measurement/internal/k4;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzn:Lcom/google/android/gms/measurement/internal/zzkw;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzep;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzo:Lcom/google/android/gms/measurement/internal/zzep;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zza(Lcom/google/android/gms/measurement/internal/k4;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzo:Lcom/google/android/gms/measurement/internal/zzep;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzen;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzu:Lcom/google/android/gms/measurement/internal/zzen;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb(Lcom/google/android/gms/measurement/internal/v3;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzu:Lcom/google/android/gms/measurement/internal/zzen;

    return-object v0
.end method

.method public final zzk()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final zzl()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzp:Lcom/google/android/gms/common/util/Clock;

    return-object v0
.end method

.method public final zzm()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzc:Landroid/content/Context;

    return-object v0
.end method

.method public final zzn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/measurement/internal/zzfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzl:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb(Lcom/google/android/gms/measurement/internal/n4;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzl:Lcom/google/android/gms/measurement/internal/zzfo;

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zzer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzk:Lcom/google/android/gms/measurement/internal/zzer;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb(Lcom/google/android/gms/measurement/internal/n4;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzk:Lcom/google/android/gms/measurement/internal/zzer;

    return-object v0
.end method

.method public final zzr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzs()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzg:Z

    return v0
.end method

.method public final zzt()Lcom/google/android/gms/measurement/internal/zzx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzh:Lcom/google/android/gms/measurement/internal/zzx;

    return-object v0
.end method

.method public final zzu()Lcom/google/android/gms/measurement/internal/zzij;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzq:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb(Lcom/google/android/gms/measurement/internal/v3;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzq:Lcom/google/android/gms/measurement/internal/zzij;

    return-object v0
.end method

.method public final zzv()Lcom/google/android/gms/measurement/internal/zzio;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzv:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb(Lcom/google/android/gms/measurement/internal/v3;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzv:Lcom/google/android/gms/measurement/internal/zzio;

    return-object v0
.end method

.method public final zzw()Lcom/google/android/gms/measurement/internal/zzal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzw:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb(Lcom/google/android/gms/measurement/internal/n4;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzw:Lcom/google/android/gms/measurement/internal/zzal;

    return-object v0
.end method

.method public final zzx()Lcom/google/android/gms/measurement/internal/zzek;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzx:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb(Lcom/google/android/gms/measurement/internal/v3;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzx:Lcom/google/android/gms/measurement/internal/zzek;

    return-object v0
.end method

.method public final zzy()Lcom/google/android/gms/measurement/internal/zza;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzs:Lcom/google/android/gms/measurement/internal/zza;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzz()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzac:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzac:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
