.class public final Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/Boolean;

.field private zzh:Ljava/lang/Boolean;

.field private zzi:Ljava/lang/Boolean;

.field private zzj:Ljava/lang/Integer;

.field private zzk:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zze:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;

    return-object p0
.end method

.method static bridge synthetic zzn(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zzg:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic zzo(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zzi:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic zzp(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zzh:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic zzq(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zzj:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic zzr(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zzk:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic zzs(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zza:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzt(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzu(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzv(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzw(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zzd:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zzj:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zzg:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzf(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zzi:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzg(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zzh:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzh(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zze:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;

    return-object p0
.end method

.method public final zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zzk(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zzk:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public final zzm()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmy;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmx;)V

    return-object v0
.end method
