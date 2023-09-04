.class public final Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzee;

.field private final zzb:Ljava/lang/Integer;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkb;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeb;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeb;->zzd(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeb;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzee;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeg;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzee;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeb;->zzg(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeb;)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeg;->zzb:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeb;->zzf(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeb;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkb;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzee;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcz;
        zza = 0x1
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeg;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzee;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkb;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcz;
        zza = 0x3
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkb;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcz;
        zza = 0x2
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeg;->zzb:Ljava/lang/Integer;

    return-object v0
.end method
