.class public final Lcom/google/android/gms/internal/measurement/zzcd$zzj$zza;
.super Lcom/google/android/gms/internal/measurement/zzhz$zza;
.source "com.google.android.gms:play-services-measurement@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzcd$zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhz$zza<",
        "Lcom/google/android/gms/internal/measurement/zzcd$zzj;",
        "Lcom/google/android/gms/internal/measurement/zzcd$zzj$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjj;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzj;->zzf()Lcom/google/android/gms/internal/measurement/zzcd$zzj;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzhz;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/t0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzj$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zzj$zza;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzu()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzj;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzj;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzj;I)V

    return-object p0
.end method

.method public final zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zzj$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/zzcd$zzj$zza;"
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzu()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzj;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzj;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzj;Ljava/lang/Iterable;)V

    return-object p0
.end method
