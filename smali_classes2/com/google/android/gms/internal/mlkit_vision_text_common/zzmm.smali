.class public final Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkl;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkh;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmq;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzml;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;->zzb(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkl;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmm;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkl;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;->zza(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkh;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmm;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkh;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;->zzg(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmm;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmq;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkh;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcz;
        zza = 0x2
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmm;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkh;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkl;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcz;
        zza = 0x1
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmm;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkl;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmq;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcz;
        zza = 0x3
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmm;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmq;

    return-object v0
.end method
