.class public final synthetic Lcom/google/mlkit/vision/text/internal/zzj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoe;


# instance fields
.field public final synthetic zza:Z

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;


# direct methods
.method public synthetic constructor <init>(ZLcom/google/android/gms/internal/mlkit_vision_text_common/zzks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/mlkit/vision/text/internal/zzj;->zza:Z

    iput-object p2, p0, Lcom/google/mlkit/vision/text/internal/zzj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_text_common/zznv;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/mlkit/vision/text/internal/zzj;->zza:Z

    iget-object v1, p0, Lcom/google/mlkit/vision/text/internal/zzj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;-><init>()V

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;

    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;->zze(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmh;-><init>()V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmh;->zzb(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmh;->zzc()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmj;

    move-result-object v0

    .line 3
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;->zzg(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmj;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoj;->zzf(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zznv;

    move-result-object v0

    return-object v0
.end method
