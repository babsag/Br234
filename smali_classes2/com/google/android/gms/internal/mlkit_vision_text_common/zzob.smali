.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zznv;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;

.field public final synthetic zzd:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;Lcom/google/android/gms/internal/mlkit_vision_text_common/zznv;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zznv;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zznv;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzob;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;->zzc(Lcom/google/android/gms/internal/mlkit_vision_text_common/zznv;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;Ljava/lang/String;)V

    return-void
.end method
